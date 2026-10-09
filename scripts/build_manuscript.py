#!/usr/bin/env python3
"""Typeset an author accepted manuscript (AAM) PDF with a standard title page.

Usage: build_manuscript.py <slug>

Inputs
  papers/data/<slug>.yml                      paper metadata, `aam` block (file, statement) and tables
  papers/manuscripts/src/<slug>.yml           manuscript config: text source, figures, table overrides
  papers/manuscripts/src/<slug>.blocks.txt    cleaned article text, one block per paragraph:
                                              @@kind@@ text   (title, authors, affil, note, abstract, keywords,
                                              h2, h3, p, item, hyp, figure, ref)
Output
  papers/manuscripts/<aam.file>               the PDF offered for download on the paper page

The text is the published article's content, re-typeset without the publisher's layout.
Requires Quarto (bundled Typst) and Playwright (to rasterise SVG figures).
"""
from __future__ import annotations

import html
import re
import subprocess
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.github.io"


# ---------------------------------------------------------------- text helpers
def esc(t: str) -> str:
    """Escape plain text for Typst markup."""
    out = []
    for ch in t:
        if ch in '\\#$@*_`<>[]~/=+-"\'().':
            out.append("\\" + ch)
        else:
            out.append(ch)
    return "".join(out)


def inline(t: str) -> str:
    """Markdown-ish (*i*, **b**) + simple HTML (<i>, <sup>, ^{x}, entities) to Typst markup."""
    t = html.unescape(t)
    t = re.sub(r"<i>(.*?)</i>", r"*\1*", t)
    t = re.sub(r"<sup>(.*?)</sup>", r"^{\1}", t)
    tokens = re.split(r"(\*\*.+?\*\*|\*[^*]+?\*|\^\{[^}]*\})", t)
    out = []
    for tok in tokens:
        if not tok:
            continue
        if tok.startswith("**") and tok.endswith("**"):
            out.append(f"#strong[{esc(tok[2:-2])}]")
        elif tok.startswith("*") and tok.endswith("*") and len(tok) > 2:
            out.append(f"#emph[{esc(tok[1:-1])}]")
        elif tok.startswith("^{"):
            out.append(f"#super[{esc(tok[2:-1])}]")
        else:
            out.append(esc(tok))
    return "".join(out)


SMALL = {"a", "an", "and", "as", "at", "by", "for", "in", "of", "on", "or", "the", "to", "with", "vs", "via"}


def titlecase(t: str) -> str:
    """'QUALITATIVE EXPLORATION' or 'Item Reduction And Reliability' -> 'Qualitative Exploration', 'Item Reduction and Reliability'."""
    words = t.split(" ")
    out = []
    for i, w in enumerate(words):
        core = w.strip("*")
        core_new = core.capitalize() if t.isupper() and core.isalpha() else core
        if i > 0 and core_new.lower() in SMALL and not out[-1].endswith(":"):
            core_new = core_new.lower()
        out.append(w.replace(core, core_new) if core else w)
    return " ".join(out)


def apa_plain(d: dict) -> str:
    def initials(g):
        return " ".join(p[0] + "." for p in re.split(r"[\s-]+", g) if p)
    names = [f"{a['family']}, {initials(a['given'])}" for a in d["authors"]]
    auth = names[0] if len(names) == 1 else ", ".join(names[:-1]) + ", & " + names[-1]
    vol = f"#emph[{esc(d['journal'])}, {esc(d['volume'])}]" + (f"\\({esc(d['issue'])}\\)" if d.get("issue") else "")
    loc = f", Article {esc(d['article_number'])}" if d.get("article_number") else f", {esc(d.get('pages', ''))}"
    return (f"{esc(auth)} ({d['published'][:4]}). {esc(d['title'])}. {vol}{loc}. "
            f"#link(\"https://doi.org/{d['doi']}\")[https:\\/\\/doi.org\\/{esc(d['doi'])}]")


# ---------------------------------------------------------------- figures
def rasterise(svg: Path, png: Path, width: int = 2160):
    from playwright.sync_api import sync_playwright
    markup = svg.read_text()
    page_html = (f"<html><body style='margin:0;background:#fff'>"
                 f"{markup.replace('<svg ', f'<svg width=\"{width}\" ', 1)}</body></html>")
    tmp = png.with_suffix(".html")
    tmp.write_text(page_html)
    with sync_playwright() as p:
        b = p.chromium.launch()
        pg = b.new_page(viewport={"width": width, "height": 400})
        pg.goto(tmp.resolve().as_uri())
        pg.locator("svg").screenshot(path=str(png))
        b.close()
    tmp.unlink()


# ---------------------------------------------------------------- tables
def typst_table(t: dict, size: str = "8.5pt") -> str:
    cols = t["columns"]
    widths = t.get("widths") or ["1fr"] + ["auto"] * (len(cols) - 1)
    aligns = t.get("align", ["left"] + ["right"] * (len(cols) - 1))
    amap = {"left": "left", "right": "right", "center": "center"}
    cells = []
    cells.append("table.hline(stroke: 0.8pt),")
    cells.append("table.header(" + ", ".join(f"[#strong[{inline(c)}]]" for c in cols) + "),")
    cells.append("table.hline(stroke: 0.5pt),")
    for r in t["rows"]:
        if isinstance(r, dict):
            row = r["cells"]
            if r.get("group"):
                cells.append(", ".join(f"[#emph[{inline(c)}]]" if i == 0 else f"[{inline(c)}]"
                                       for i, c in enumerate(row)) + ",")
                continue
        else:
            row = r
        cells.append(", ".join(f"[{inline(c)}]" for c in row) + ",")
    cells.append("table.hline(stroke: 0.8pt),")
    align = "(" + ", ".join(amap[a] for a in aligns) + ",)"
    note = f"\n#text(size: 8pt)[{inline(t['note'])}]" if t.get("note") else ""
    if t.get("label"):
        cap = f"#text(size: 9.5pt)[#strong[{esc(t['label'])}] #linebreak() {inline(t['title'])}]"
    else:
        cap = f"#text(size: 9.5pt)[#strong[Table {esc(t['id'])}.] {inline(t['title'])}]"
    breakable = "true" if len(t["rows"]) > 18 else "false"
    return (f"#block(breakable: {breakable})[\n{cap}\n"
            f"#v(4pt)\n#set par(justify: false, first-line-indent: 0em)\n#text(size: {size})[#table(columns: ({', '.join(widths)}), align: {align}, stroke: none, "
            f"inset: (x: 4pt, y: 3.2pt),\n" + "\n".join(cells) + f"\n)]{note}\n]\n#v(12pt)\n")


# ---------------------------------------------------------------- document
def build(slug: str) -> Path:
    d = yaml.safe_load((ROOT / "papers" / "data" / f"{slug}.yml").read_text())
    cfg = yaml.safe_load((ROOT / "papers" / "manuscripts" / "src" / f"{slug}.yml").read_text())
    src = ROOT / "papers" / "manuscripts" / "src"
    work = src / "build"
    work.mkdir(exist_ok=True)

    blocks = []
    for chunk in (src / cfg["text"]).read_text().split("\n\n"):
        m = re.match(r"@@(\w+)@@ ?(.*)", chunk.strip(), re.S)
        if m:
            blocks.append((m.group(1), m.group(2).strip()))

    # figures: rasterise the SVGs used on the web page
    fig_files = {}
    for key, fg in cfg.get("figures", {}).items():
        png = work / f"{key}.png"
        rasterise(ROOT / "papers" / fg["svg"], png)
        fig_files[key] = png.name

    tables = {t["id"]: t for t in d.get("tables", [])}
    for tid, over in (cfg.get("table_overrides") or {}).items():
        tables[tid] = {**tables.get(tid, {}), **over}

    authors_line = ", ".join(f"{a['given']} {a['family']}" for a in d["authors"])
    year = d["published"][:4]
    fam = [a["family"] for a in d["authors"]]
    who = fam[0] if len(fam) == 1 else (" and ".join(fam) if len(fam) == 2 else
                                        (f"{', '.join(fam[:-1])} and {fam[-1]}" if len(fam) == 3 else f"{fam[0]} et al."))
    running = f"{who} ({year}), accepted manuscript"

    T = []
    T.append(f'''#set document(title: "{esc(d["title"])}", author: ({", ".join('"' + a["given"] + " " + a["family"] + '"' for a in d["authors"])}))
#set page(paper: "a4", margin: (x: 2.5cm, top: 2.6cm, bottom: 2.4cm),
  header: context {{ if counter(page).get().first() > 1 [#set text(size: 8pt, fill: rgb("#5b6476")); {esc(running)} #h(1fr) {esc(d["journal"])}] }},
  footer: context {{ set text(size: 8.5pt, fill: rgb("#5b6476")); h(1fr); counter(page).display(); h(1fr) }})
#set text(font: ("Libertinus Serif", "New Computer Modern", "DejaVu Sans"), size: 11pt, lang: "en")
#set par(justify: true, leading: 0.78em, spacing: 0.9em, first-line-indent: 1.2em)
#show heading.where(level: 1): it => block(above: 1.5em, below: 0.8em, text(size: 12.5pt, weight: "bold", it.body))
#show heading.where(level: 2): it => block(above: 1.2em, below: 0.6em, text(size: 11pt, weight: "bold", style: "italic", it.body))
#show link: set text(fill: rgb("#15203b"))

// ---------------- title page
#set par(first-line-indent: 0em)
#v(1.2cm)
#text(size: 10pt, weight: "bold", fill: rgb("#8a5a00"), tracking: 0.04em)[Accepted manuscript]
#v(0.5em)
#text(size: 19pt, weight: "bold", hyphenate: false)[{esc(d["title"])}]
#v(0.8em)
#text(size: 12pt)[{esc(authors_line)}]
#v(0.2em)
#text(size: 10pt, style: "italic")[{inline(cfg.get("affiliation_line", ""))}]
#v(1.4cm)
#block(width: 100%, inset: 14pt, radius: 3pt, stroke: 0.6pt + rgb("#dde1e8"), fill: rgb("#f6f7f9"))[
  #set text(size: 10pt)
  #strong[To cite this article]
  #v(0.2em)
  {apa_plain(d)}
  #v(0.9em)
  {inline(d["aam"]["statement"]).replace(esc("https://doi.org/" + d["doi"]), f'#link("https://doi.org/{d["doi"]}")[https:\\/\\/doi.org\\/{esc(d["doi"])}]')}
  #v(0.9em)
  This is the authors' accepted manuscript. Its content is that of the published article; it differs only in
  formatting and pagination. Please cite the published version.
]
#v(1fr)
#text(size: 8.5pt, fill: rgb("#5b6476"))[{inline(cfg.get("title_page_footer", ""))}
Downloaded from #link("{SITE}/papers/{slug}.html")[schivinski.github.io]]
#pagebreak()
#set par(first-line-indent: 1.2em)
''')

    first_after_heading = True
    bullet = cfg.get("item_bullet", "")
    tc = titlecase if cfg.get("titlecase_headings") else (lambda x: x)
    in_highlights = False
    for kind, text in blocks:
        if in_highlights and kind != "highlight":
            T.append("]\n#v(0.6em)\n")
            in_highlights = False
        if kind == "highlight":
            if not in_highlights:
                T.append(f"#block(width: 100%, inset: (x: 12pt, y: 10pt), stroke: (left: 2pt + rgb(\"#8a5a00\")), "
                         f"fill: rgb(\"#f6f7f9\"))[#set par(first-line-indent: 0em); #set text(size: 10pt); "
                         f"#strong[{esc(cfg.get('highlights_title', 'Highlights'))}]\n")
                in_highlights = True
            T.append(f"#pad(left: 0.4em)[#par(hanging-indent: 1em)[•#h(0.5em){inline(text)}]]\n")
            continue
        if kind == "table":
            T.append("#v(0.4em)\n" + typst_table(tables[text.lstrip("T")]))
            continue
        if kind == "about":
            T.append(f"#par(first-line-indent: 0em)[#text(size: 10pt)[{inline(text)}]]\n\n")
            continue
        if kind == "title":
            T.append(f"#align(left)[#text(size: 15pt, weight: \"bold\", hyphenate: false)[{inline(text)}]]\n#v(0.6em)\n")
        elif kind == "authors":
            T.append(f"#par(first-line-indent: 0em)[{inline(text)}]\n")
        elif kind == "affil":
            T.append(f"#par(first-line-indent: 0em)[#text(size: 10pt, style: \"italic\")[{inline(text)}]]\n")
        elif kind == "note":
            T.append(f"#par(first-line-indent: 0em)[#text(size: 9pt)[\\*{inline(text)}]]\n#v(0.8em)\n")
        elif kind == "abstract":
            T.append(f"#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); "
                     f"#strong[Abstract] #linebreak() {inline(text)}]\n")
        elif kind == "keywords":
            T.append(f"#pad(x: 1.2cm)[#set par(first-line-indent: 0em); #set text(size: 10pt); "
                     f"#strong[Keywords:] {inline(text)}]\n#v(0.6em)\n")
        elif kind == "h2":
            T.append(f"= {inline(tc(text))}\n")
            first_after_heading = True
            if text.lower() == "references":
                T.append("#set par(first-line-indent: 0em, hanging-indent: 1.2em, spacing: 0.55em)\n#set text(size: 9.5pt)\n")
            continue
        elif kind == "h3":
            T.append(f"== {inline(tc(text))}\n")
            first_after_heading = True
            continue
        elif kind == "p":
            pre = "#par(first-line-indent: 0em)[" if first_after_heading else ""
            T.append(f"{pre}{inline(text)}{']' if pre else ''}\n\n")
        elif kind == "item":
            mark = f"{bullet}#h(0.5em)" if bullet else ""
            T.append(f"#pad(left: 1.2em)[#par(first-line-indent: 0em, hanging-indent: {'0.9em' if bullet else '1.6em'})[{mark}{inline(text)}]]\n")
        elif kind == "hyp":
            T.append(f"#pad(left: 1.2em, right: 1.2em)[#par(first-line-indent: 0em)[{inline(text)}]]\n")
        elif kind == "figure":
            key, cap = text.split("|", 1)
            T.append(f"#figure(image(\"build/{fig_files[key]}\", width: 100%), caption: none, kind: image, supplement: none)\n"
                     f"#align(center)[#text(size: 9.5pt)[{inline(cap)}]]\n#v(0.6em)\n")
        elif kind == "ref":
            T.append(f"{inline(text)}\n\n")
        first_after_heading = False

    # appendix tables
    if cfg.get("appendix_tables"):
        T.append("#set par(hanging-indent: 0em)\n#set text(size: 11pt)\n#pagebreak()\n"
                 + (f"= {esc(cfg.get('appendix_heading', 'Appendix'))}\n" if cfg.get("appendix_heading", "Appendix") else ""))
        for tid in cfg["appendix_tables"]:
            t = tables[tid]
            if t.get("newpage"):
                T.append("#pagebreak()\n")
            if t.get("landscape"):
                T.append(f"#page(flipped: true)[\n{typst_table(t, size=t.get('size', '8pt'))}]\n")
            else:
                T.append(typst_table(t))

    typ = src / f"{slug}.typ"
    typ.write_text("".join(T))
    out = ROOT / "papers" / "manuscripts" / d["aam"]["file"]
    subprocess.run(["quarto", "typst", "compile", str(typ), str(out)], check=True)
    return out


if __name__ == "__main__":
    print(build(sys.argv[1]))
