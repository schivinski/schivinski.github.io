#!/usr/bin/env python3
"""Build the ready-to-use toolkit for a published scale from its paper data file.

Usage: build_scale_kit.py <slug>

Reads papers/data/<slug>.yml (`scale` block) and writes, into papers/<download dir>:
  questionnaire PDF (print-ready, via Typst), Qualtrics Advanced Format import file,
  item codebook (CSV), R/lavaan script, Mplus input.
All files are generated from the same item list, so they cannot drift apart.

`scale` block (see PAPER_PAGES.md):
  name, short, summary, facts, response_labels, response_codes, score (mean | sum),
  introduction {label, text, source: article | suggested},
  pre_questions [{id, title, text, type: text | yesno, note, source}],
  block_instruction, block_instruction_source, block_prefix, placeholder,
  dimensions [{code, name, definition, items [{id, text, label_in_article, loading}]}],
  codebook_from_table {id, label_col, loading_col}   (optional: fill article labels from a table)
  administration, scoring, intro_note, admin_box, downloads,
  analysis {r_options, r_extra, mplus_estimator, mplus_extra, mplus_notes, title}
"""
from __future__ import annotations

import csv
import re
import subprocess
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.github.io"


def apa_text(d: dict) -> str:
    def initials(g):
        return " ".join(p[0] + "." for p in re.split(r"[\s-]+", g) if p)
    names = [f"{a['family']}, {initials(a['given'])}" for a in d["authors"]]
    auth = names[0] if len(names) == 1 else ", ".join(names[:-1]) + ", & " + names[-1]
    return (f"{auth} ({d['published'][:4]}). {d['title']}. {d['journal']}, {d['volume']}({d['issue']}), "
            f"{d['pages']}. https://doi.org/{d['doi']}")


def short_authors(d: dict, sep_last: str = " and ") -> str:
    fam = [a["family"] for a in d["authors"]]
    if len(fam) == 1:
        return fam[0]
    if len(fam) == 2:
        return f"{fam[0]}{sep_last}{fam[1]}"
    if len(fam) == 3:
        return f"{fam[0]}, {fam[1]}{sep_last}{fam[2]}"
    return f"{fam[0]} et al."


def var(item_id: str) -> str:
    return item_id.lower()


def typ_esc(t: str) -> str:
    return "".join("\\" + c if c in '\\#$@*_`<>[]~/=+-"\'' else c for c in str(t))


def ascii_only(t: str) -> str:
    return (t.replace("–", "-").replace("—", "-").replace("’", "'").replace("‘", "'")
             .replace("“", '"').replace("”", '"').encode("ascii", "ignore").decode())


def yesno_options(pq: dict) -> list:
    """Answer options of a yes/no question as (code, label); order as listed."""
    return [(o["code"], o["label"]) for o in pq.get("options", [{"code": 1, "label": "Yes"}, {"code": 2, "label": "No"}])]


def score_word(s: dict) -> str:
    return "sum" if s.get("score") == "sum" else "mean"


def build(slug: str) -> list[Path]:
    d = yaml.safe_load((ROOT / "papers" / "data" / f"{slug}.yml").read_text())
    s = d["scale"]
    an = s.get("analysis", {})
    stem = s.get("file_stem", s["short"].lower())
    out_dir = ROOT / "papers" / Path(s["downloads"][0]["file"]).parent
    out_dir.mkdir(parents=True, exist_ok=True)
    cite = apa_text(d)
    page_url = f"{SITE}/papers/{slug}.html"
    labels, codes, dims = s["response_labels"], s["response_codes"], s["dimensions"]
    flat = [it for dm in dims for it in dm["items"]]
    coding = "; ".join(f"{c} = {l}" if l else str(c) for c, l in zip(codes, labels))
    written = []

    # article labels and loadings, optionally from a table in the data file
    cft = s.get("codebook_from_table")
    if cft:
        t = next(t for t in d.get("tables", []) if t["id"] == cft["id"])
        rows = [r for r in t["rows"] if not isinstance(r, dict)]
        for it, r in zip(flat, rows):
            it.setdefault("label_in_article", r[cft["label_col"]])
            it.setdefault("loading", r[cft["loading_col"]])

    # ---------------- codebook
    p = out_dir / f"{stem}-codebook.csv"
    with p.open("w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["variable", "dimension", "item_text", "label_in_article", "loading_in_article",
                    "response_coding", "score"])
        for pq in s.get("pre_questions", []):
            pcode = "; ".join(f"{c} = {l}" for c, l in yesno_options(pq)) if pq["type"] == "yesno" else "open text"
            keep = (f"keep respondents with {var(pq['id'])} = {pq['keep']}" if "keep" in pq else "")
            w.writerow([var(pq["id"]), pq["title"], pq["text"], "", "", pcode, keep])
        for dm in dims:
            first, last = var(dm["items"][0]["id"]), var(dm["items"][-1]["id"])
            for it in dm["items"]:
                w.writerow([var(it["id"]), dm["name"], it["text"], it.get("label_in_article", ""),
                            it.get("loading", ""), coding,
                            f"{dm['name'].lower()} = {score_word(s)} of {first}-{last}"])
    written.append(p)

    # ---------------- Qualtrics Advanced Format
    intro = s["introduction"]
    q = ["[[AdvancedFormat]]", "", "[[Block:Introduction]]", "", "[[Question:DB]]", intro["text"].strip(), ""]
    for pq in s.get("pre_questions", []):
        q += [f"[[Block:{pq['title']}]]", ""]
        if pq["type"] == "yesno":
            q += ["[[Question:MC:SingleAnswer:Vertical]]", f"[[ID:{pq['id']}]]", pq["text"], "[[Choices]]"]
            q += [l for c, l in yesno_options(pq)] + [""]
        else:
            q += ["[[Question:TE:SingleLine]]", f"[[ID:{pq['id']}]]", pq["text"], ""]
        if pq.get("note") and pq.get("note_audience") != "researcher":
            q += ["[[Question:DB]]", pq["note"], ""]
    prefix = (s.get("block_prefix", "") + " ") if s.get("block_prefix") else ""
    for dm in dims:
        q += [f"[[Block:{dm['name']}]]", "", "[[Question:Matrix]]", f"[[ID:{dm['code']}]]",
              f"{prefix}{s['block_instruction']}", "[[Choices]]"]
        q += [it["text"] for it in dm["items"]]
        q += ["[[Answers]]"] + [f"{c} - {l}" if l else str(c) for c, l in zip(codes, labels)] + [""]
    p = out_dir / f"{stem}-qualtrics-import.txt"
    p.write_text("\n".join(q).rstrip() + "\n")
    written.append(p)

    # ---------------- R / lavaan
    lines_cfa = "\n".join(
        f"  {dm['name'].lower().replace(' ', '_'):<13}=~ " + " + ".join(var(i["id"]) for i in dm["items"]) for dm in dims)
    item_lists = ",\n  ".join(
        f"{dm['name'].lower().replace(' ', '_')} = c({', '.join(chr(34) + var(i['id']) + chr(34) for i in dm['items'])})"
        for dm in dims)
    fn = "rowSums" if s.get("score") == "sum" else "rowMeans"
    lo, hi = min(codes), max(codes)
    n_items = [len(dm["items"]) for dm in dims]
    rng = (f"range {lo * n_items[0]}-{hi * n_items[0]}" if s.get("score") == "sum" and len(dims) == 1
           else f"range {lo}-{hi}")
    model_word = {1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"}.get(len(dims), str(len(dims))) + "-factor"
    r = f'''# {s["name"]}
# Scoring, reliability and confirmatory factor analysis in R (lavaan).
#
# Please cite: {cite}
# Scale page and materials: {page_url}
#
# Data: one row per respondent, item columns named as in the codebook
# ({", ".join(var(dm["items"][0]["id"]) + "-" + var(dm["items"][-1]["id"]) for dm in dims)}),
# coded {coding}.

library(lavaan)

dat <- read.csv("your_data.csv")
{"".join(chr(10) + "# Keep eligible respondents (" + var(pq["id"]) + ": " + "; ".join(f"{c} = {l}" for c, l in yesno_options(pq)) + ")" + chr(10) + "dat <- subset(dat, " + var(pq["id"]) + " == " + str(pq["keep"]) + ")" + chr(10) for pq in s.get("pre_questions", []) if "keep" in pq)}
items <- list(
  {item_lists}
)

# 1. Scores: {score_word(s)} of the items ({rng})
for (dim in names(items)) dat[[paste0(dim, "_score")]] <- {fn}(dat[items[[dim]]])
summary(dat[paste0(names(items), "_score")])

# 2. Cronbach's alpha
cronbach_alpha <- function(x) {{
  x <- na.omit(x); k <- ncol(x)
  k / (k - 1) * (1 - sum(apply(x, 2, var)) / var(rowSums(x)))
}}
sapply(items, function(v) cronbach_alpha(dat[v]))

# 3. {model_word} CFA ({an.get("estimator_note", "as in the article")})
model_cfa <- "
{lines_cfa}
"
fit_cfa <- cfa(model_cfa, data = dat, {an.get("r_options", 'estimator = "MLR"')})
summary(fit_cfa, fit.measures = TRUE, standardized = TRUE)

# Composite reliability (CR) and average variance extracted (AVE)
loadings <- subset(standardizedSolution(fit_cfa), op == "=~")
do.call(rbind, lapply(split(loadings, loadings$lhs), function(x) {{
  l <- x$est.std
  data.frame(factor = x$lhs[1], CR = sum(l)^2 / (sum(l)^2 + sum(1 - l^2)), AVE = mean(l^2))
}}))
{an.get("r_extra", "").rstrip()}
'''
    p = out_dir / f"{stem}-analysis.R"
    p.write_text(r)
    written.append(p)

    # ---------------- Mplus (ASCII only, lines under 90 characters)
    all_vars = " ".join(f"{var(dm['items'][0]['id'])}-{var(dm['items'][-1]['id'])}" for dm in dims)
    by = "\n".join(f"  {dm['code']} BY {var(dm['items'][0]['id'])}-{var(dm['items'][-1]['id'])};" for dm in dims)
    mp = f'''TITLE:    {ascii_only(an.get("title", s["short"] + " scale: CFA"))}
! Please cite: {ascii_only(short_authors(d, " & "))} ({d["published"][:4]}),
! {ascii_only(d["journal"])} {d["volume"]}({d["issue"]}), {ascii_only(d["pages"])}.
! https://doi.org/{d["doi"]}   Materials: schivinski.github.io

DATA:     FILE = {stem}.dat;          ! replace with your data file

VARIABLE: NAMES = {all_vars};
          USEVARIABLES = {all_vars};
          MISSING = ALL (-99);

ANALYSIS: ESTIMATOR = {an.get("mplus_estimator", "MLR")};{("           ! " + ascii_only(an["mplus_estimator_note"])) if an.get("mplus_estimator_note") else ""}

MODEL:
{by}
{chr(10).join(("          " + l) if l.strip() else "" for l in ascii_only(an.get("mplus_extra", "")).rstrip().split(chr(10)))}

OUTPUT:   STANDARDIZED MODINDICES;
{ascii_only(an.get("mplus_notes", "")).rstrip()}
'''
    for ln in mp.splitlines():
        assert len(ln) <= 90, f"Mplus line over 90 characters: {ln}"
    p = out_dir / f"{stem}-cfa.inp"
    p.write_text(mp)
    written.append(p)

    # ---------------- questionnaire PDF (Typst)
    n_pts = len(codes)
    head_cells = ", ".join(f"[#text(size: 7.5pt)[{typ_esc(l) if l else c}]]" for c, l in zip(codes, labels))
    col_w = "2.6em" if n_pts > 6 else "3.6em"
    part = 1
    pre_typ = []
    for pq in s.get("pre_questions", []):
        part += 1
        answer = ("#box(width: 70%, height: 18pt, stroke: (bottom: 0.6pt))" if pq["type"] == "text" else
                  " #h(2em) ".join(f"#box(width: 9pt, height: 9pt, radius: 50%, stroke: 0.6pt) {typ_esc(l)}"
                                   for c, l in yesno_options(pq)))
        who = "For researchers: " if pq.get("note_audience") == "researcher" else ""
        note = f"#v(4pt)\n#text(size: 9.5pt, style: \"italic\")[{typ_esc(who + pq['note'])}]" if pq.get("note") else ""
        pre_typ.append(f'''#text(size: 12pt, weight: "bold")[Part {part - 1}. {typ_esc(pq["title"])}]
#v(2pt)
{typ_esc(pq["text"])}
#v(6pt)
{answer}
{note}
#v(16pt)
''')
    blocks_typ = []
    for dm in dims:
        part += 1
        rows = []
        for it in dm["items"]:
            rows.append(f"[#text(size: 7.5pt, fill: rgb(\"#5b6476\"))[{it['id']}]], [{typ_esc(it['text'])}], "
                        + ", ".join(["[#box(width: 9pt, height: 9pt, radius: 50%, stroke: 0.6pt)]"] * n_pts) + ",")
        title = f"Part {part - 1}. {typ_esc(dm['name'])}" if len(dims) > 1 or pre_typ else typ_esc(dm["name"])
        blocks_typ.append(f'''
#block(breakable: false)[
#text(size: 12pt, weight: "bold")[{title}]
#v(2pt)
#text(size: 9.5pt)[{typ_esc(prefix + s["block_instruction"])}]
#v(6pt)
#table(columns: (auto, 1fr, {", ".join([col_w] * n_pts)}), align: (left + horizon, left + horizon, {", ".join(["center + horizon"] * n_pts)}),
  stroke: (x, y) => if y == 0 {{ (bottom: 0.7pt) }} else {{ (bottom: 0.3pt + rgb("#dde1e8")) }}, inset: (x: 4pt, y: 6pt),
  [], [], {head_cells},
  {chr(10).join(rows)}
)
]
#v(14pt)
''')
    scoring_note = s.get("scoring_note_pdf", "")
    t = f'''#set document(title: "{typ_esc(s["name"])}")
#set page(paper: "a4", margin: (x: 2cm, top: 2cm, bottom: 2.2cm),
  footer: [#set text(size: 7.5pt, fill: rgb("#5b6476")); {typ_esc(s["short"])}, {typ_esc(short_authors(d))} ({d["published"][:4]}). Materials: {typ_esc(page_url)} #h(1fr) #context counter(page).display()])
#set text(font: ("Libertinus Serif", "New Computer Modern"), size: 10.5pt)
#set par(justify: false, leading: 0.7em)

#text(size: 9pt, weight: "bold", fill: rgb("#8a5a00"))[Ready-to-use questionnaire]
#v(2pt)
#text(size: 17pt, weight: "bold")[{typ_esc(s["name"])}]
#v(6pt)
#block(width: 100%, inset: 10pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 8.5pt)
  #strong[Please cite.] {typ_esc(cite)}
  #v(3pt)
  #strong[Administration.] {typ_esc(s["admin_box"].strip())}
]
#v(12pt)

#text(size: 12pt, weight: "bold")[{typ_esc(intro.get("label", "Introduction"))}]
#v(2pt)
{typ_esc(intro["text"].strip())}
#v(12pt)

{"".join(pre_typ)}
{"".join(blocks_typ)}
{("#v(4pt)" + chr(10) + "#text(size: 12pt, weight: " + chr(34) + "bold" + chr(34) + ")[Scoring]" + chr(10) + "#v(2pt)" + chr(10) + typ_esc(scoring_note.strip())) if scoring_note else ""}
'''
    typ = out_dir / f"{stem}-questionnaire.typ"
    typ.write_text(t)
    pdf = out_dir / f"{stem}-questionnaire.pdf"
    subprocess.run(["quarto", "typst", "compile", str(typ), str(pdf)], check=True)
    typ.unlink()
    written.append(pdf)
    return written


if __name__ == "__main__":
    for f in build(sys.argv[1]):
        print(f.relative_to(ROOT))
