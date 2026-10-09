#!/usr/bin/env python3
"""Build the ready-to-use toolkit for a published scale from its paper data file.

Usage: build_scale_kit.py <slug>

Reads papers/data/<slug>.yml (`scale` block) and writes, into papers/<download dir>:
  questionnaire PDF (print-ready, via Typst), Qualtrics Advanced Format import file,
  item codebook (CSV), R/lavaan script, Mplus input.
All files are generated from the same item list, so they cannot drift apart.
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


def var(item_id: str) -> str:
    return item_id.lower()


def typ_esc(t: str) -> str:
    return "".join("\\" + c if c in '\\#$@*_`<>[]~/=+-"\'' else c for c in t)


def build(slug: str) -> list[Path]:
    d = yaml.safe_load((ROOT / "papers" / "data" / f"{slug}.yml").read_text())
    s = d["scale"]
    out_dir = ROOT / "papers" / Path(s["downloads"][0]["file"]).parent
    out_dir.mkdir(parents=True, exist_ok=True)
    cite = apa_text(d)
    page_url = f"{SITE}/papers/{slug}.html"
    labels = s["response_labels"]
    codes = s["response_codes"]
    dims = s["dimensions"]
    written = []

    # Appendix C wording for the codebook (original labels)
    tbl_c = next((t for t in d.get("tables", []) if t["id"] == "C"), None)
    orig = {}
    if tbl_c:
        rows = [r for r in tbl_c["rows"] if not isinstance(r, dict)]
        flat = [it for dm in dims for it in dm["items"]]
        for it, r in zip(flat, rows):
            orig[it["id"]] = (r[0], r[1], r[5])   # label, wording, validation loading

    # ---------------- codebook
    p = out_dir / f"{s['short'].lower()}-codebook.csv"
    with p.open("w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["variable", "dimension", "item_text", "label_in_article", "validation_loading",
                    "response_coding", "score"])
        for dm in dims:
            for it in dm["items"]:
                o = orig.get(it["id"], ("", "", ""))
                w.writerow([var(it["id"]), dm["name"], it["text"], o[0], o[2],
                            "; ".join(f"{c} = {l or c}" for c, l in zip(codes, labels)),
                            f"{dm['name'].lower()} = mean of {var(dm['items'][0]['id'])}-{var(dm['items'][-1]['id'])}"])
    written.append(p)

    # ---------------- Qualtrics Advanced Format
    q = ["[[AdvancedFormat]]", "", "[[Block:Introduction]]", "", "[[Question:DB]]", s["introduction"].strip(), "",
         "[[Block:Brand]]", "", "[[Question:TE:SingleLine]]", "[[ID:BRAND]]", s["brand_question"], "",
         "[[Question:DB]]", s["brand_note"], ""]
    for dm in dims:
        q += [f"[[Block:{dm['name']}]]", "", "[[Question:Matrix]]", f"[[ID:{dm['code']}]]",
              f"Think about [BRAND]. {s['block_instruction']}", "[[Choices]]"]
        q += [it["text"] for it in dm["items"]]
        q += ["[[Answers]]"]
        q += [f"{c} - {l}" if l else str(c) for c, l in zip(codes, labels)]
        q += [""]
    p = out_dir / f"{s['short'].lower()}-qualtrics-import.txt"
    p.write_text("\n".join(q).rstrip() + "\n")
    written.append(p)

    # ---------------- R / lavaan
    lines_cfa = "\n".join(
        f"  {dm['name'].lower():<13}=~ " + " + ".join(var(i["id"]) for i in dm["items"]) for dm in dims)
    item_lists = ",\n  ".join(
        f"{dm['name'].lower()} = c({', '.join(repr(var(i['id'])).replace(chr(39), chr(34)) for i in dm['items'])})"
        for dm in dims)
    r = f'''# {s["name"]}
# Scoring, reliability and confirmatory factor analysis in R (lavaan).
#
# Please cite: {cite}
# Scale page and materials: {page_url}
#
# Data: one row per respondent, item columns named as in the codebook
# ({", ".join(var(dm["items"][0]["id"]) + "-" + var(dm["items"][-1]["id"]) for dm in dims)}),
# coded 0 = not at all, 1 = not very often ... 7 = very often.

library(lavaan)

dat <- read.csv("your_data.csv")

items <- list(
  {item_lists}
)

# 1. Dimension scores: mean of the items in each dimension (range 0-7)
for (dim in names(items)) dat[[paste0(dim, "_score")]] <- rowMeans(dat[items[[dim]]])
summary(dat[paste0(names(items), "_score")])

# 2. Cronbach's alpha per dimension
cronbach_alpha <- function(x) {{
  x <- na.omit(x); k <- ncol(x)
  k / (k - 1) * (1 - sum(apply(x, 2, var)) / var(rowSums(x)))
}}
sapply(items, function(v) cronbach_alpha(dat[v]))

# 3. Three-factor CFA (robust maximum likelihood, as in the article)
model_cfa <- "
{lines_cfa}
"
fit_cfa <- cfa(model_cfa, data = dat, estimator = "MLR")
summary(fit_cfa, fit.measures = TRUE, standardized = TRUE)

# Composite reliability (CR) and average variance extracted (AVE)
loadings <- subset(standardizedSolution(fit_cfa), op == "=~")
do.call(rbind, lapply(split(loadings, loadings$lhs), function(x) {{
  l <- x$est.std
  data.frame(factor = x$lhs[1], CR = sum(l)^2 / (sum(l)^2 + sum(1 - l^2)), AVE = mean(l^2))
}}))

# 4. Hierarchical model: consumption -> contribution -> creation (Figure 2)
model_hier <- paste(model_cfa, "
  contribution ~ consumption
  creation     ~ contribution
")
fit_hier <- sem(model_hier, data = dat, estimator = "MLR")
summary(fit_hier, fit.measures = TRUE, standardized = TRUE)

# 5. Mediation: does contribution mediate consumption -> creation? (Table 2)
model_med <- paste(model_cfa, "
  contribution ~ a * consumption
  creation     ~ b * contribution + c * consumption
  indirect := a * b
  total    := c + a * b
")
fit_med <- sem(model_med, data = dat, se = "bootstrap", bootstrap = 5000)
parameterEstimates(fit_med, boot.ci.type = "bca.simple", level = 0.99, standardized = TRUE)
'''
    p = out_dir / f"{s['short'].lower()}-analysis.R"
    p.write_text(r)
    written.append(p)

    # ---------------- Mplus
    all_vars = " ".join(f"{var(dm['items'][0]['id'])}-{var(dm['items'][-1]['id'])}" for dm in dims)
    by = "\n".join(f"  {dm['code']} BY {var(dm['items'][0]['id'])}-{var(dm['items'][-1]['id'])};" for dm in dims)
    mp = f'''TITLE:    {s["short"]} scale: three-factor CFA and hierarchical model
! Please cite: {d["authors"][0]["family"]}, {d["authors"][1]["family"]} & {d["authors"][2]["family"]} ({d["published"][:4]}),
! {d["journal"]} {d["volume"]}({d["issue"]}), {d["pages"].replace("–", "-")}.
! https://doi.org/{d["doi"]}   Materials: schivinski.github.io

DATA:     FILE = cebsc.dat;          ! replace with your data file

VARIABLE: NAMES = {all_vars};
          USEVARIABLES = {all_vars};
          MISSING = ALL (-99);

ANALYSIS: ESTIMATOR = MLR;           ! robust maximum likelihood, as in the article

MODEL:
{by}

          ! Hierarchical model (Figure 2): remove the two "!" below to estimate it
          ! CONT ON CONS;
          ! CREA ON CONT;

OUTPUT:   STANDARDIZED MODINDICES;

! Mediation test (Table 2): run as a separate analysis with
!   ANALYSIS: ESTIMATOR = ML; BOOTSTRAP = 5000;
!   MODEL:    (factors as above) CONT ON CONS; CREA ON CONT CONS;
!   MODEL INDIRECT: CREA IND CONS;
!   OUTPUT:   STANDARDIZED CINTERVAL(BCBOOTSTRAP);
'''
    p = out_dir / f"{s['short'].lower()}-cfa.inp"
    p.write_text(mp)
    written.append(p)

    # ---------------- questionnaire PDF (Typst)
    n_pts = len(codes)
    head_cells = ", ".join(f"[#text(size: 7.5pt)[{typ_esc(l) if l else c}]]" for c, l in zip(codes, labels))
    blocks_typ = []
    for i, dm in enumerate(dims):
        rows = []
        for it in dm["items"]:
            rows.append(f"[#text(size: 7.5pt, fill: rgb(\"#5b6476\"))[{it['id']}]], [{typ_esc(it['text'])}], "
                        + ", ".join(["[#box(width: 9pt, height: 9pt, radius: 50%, stroke: 0.6pt)]"] * n_pts) + ",")
        blocks_typ.append(f'''
#block(breakable: false)[
#text(size: 12pt, weight: "bold")[Part {i + 2}. {typ_esc(dm["name"])}]
#v(2pt)
#text(size: 9.5pt)[Think about the brand you named. {typ_esc(s["block_instruction"])}]
#v(6pt)
#table(columns: (auto, 1fr, {", ".join(["2.6em"] * n_pts)}), align: (left + horizon, left + horizon, {", ".join(["center + horizon"] * n_pts)}),
  stroke: (x, y) => if y == 0 {{ (bottom: 0.7pt) }} else {{ (bottom: 0.3pt + rgb("#dde1e8")) }}, inset: (x: 4pt, y: 6pt),
  [], [], {head_cells},
  {chr(10).join(rows)}
)
]
#v(14pt)
''')
    t = f'''#set document(title: "{typ_esc(s["name"])}")
#set page(paper: "a4", margin: (x: 2cm, top: 2cm, bottom: 2.2cm),
  footer: [#set text(size: 7.5pt, fill: rgb("#5b6476")); {typ_esc(s["short"])} scale, {typ_esc(d["authors"][0]["family"])}, {typ_esc(d["authors"][1]["family"])} and {typ_esc(d["authors"][2]["family"])} ({d["published"][:4]}). Materials: {typ_esc(page_url)} #h(1fr) #context counter(page).display()])
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
  #strong[Administration.] Present each part on its own page; randomise the order of Parts 2 to 4 and of the items within
  each part. Replace [BRAND] with the brand the respondent named. Code answers 0 to 7 as shown; each dimension score is
  the mean of its items. Introduction and brand question are suggested wording; item wording and response format are as
  published.
]
#v(12pt)

#text(size: 12pt, weight: "bold")[Introduction]
#v(2pt)
{typ_esc(s["introduction"].strip())}
#v(12pt)

#text(size: 12pt, weight: "bold")[Part 1. Your brand]
#v(2pt)
{typ_esc(s["brand_question"])}
#v(4pt)
#box(width: 70%, height: 18pt, stroke: (bottom: 0.6pt))
#v(4pt)
#text(size: 9.5pt, style: "italic")[{typ_esc(s["brand_note"])}]
#v(16pt)
{"".join(blocks_typ)}
'''
    typ = out_dir / f"{s['short'].lower()}-questionnaire.typ"
    typ.write_text(t)
    pdf = out_dir / f"{s['short'].lower()}-questionnaire.pdf"
    subprocess.run(["quarto", "typst", "compile", str(typ), str(pdf)], check=True)
    typ.unlink()
    written.append(pdf)
    return written


if __name__ == "__main__":
    for f in build(sys.argv[1]):
        print(f.relative_to(ROOT))
