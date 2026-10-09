#!/usr/bin/env python3
"""Build one page per paper from papers/data/<slug>.yml, plus llms.txt.

Each data file is the single source of truth for a paper page: the visible page,
the Google Scholar meta tags, the schema.org structured data (ScholarlyArticle and
FAQPage) and the llms.txt entry are all generated from it. See PAPER_PAGES.md.

Outputs (generated, not committed):
  papers/<slug>.qmd
  llms.txt
"""
from __future__ import annotations

import html
import json
import os
import re
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "papers" / "data"
SITE = "https://schivinski.github.io"
ME = {"name": "Bruno Schivinski", "orcid": "0000-0002-4095-1922"}


def esc(x) -> str:
    return html.escape(str(x or ""), quote=True)


def initials(given: str) -> str:
    return " ".join(p[0] + "." for p in re.split(r"[\s-]+", given) if p)


def apa_authors(authors: list[dict]) -> str:
    names = [f"{a['family']}, {initials(a['given'])}" for a in authors]
    if len(names) == 1:
        return names[0]
    if len(names) <= 20:
        return ", ".join(names[:-1]) + ", &amp; " + names[-1]
    return ", ".join(names[:19]) + ", … " + names[-1]


def apa(d: dict) -> str:
    year = d["published"][:4]
    vol = f"<em>{esc(d['journal'])}, {esc(d['volume'])}</em>" if d.get("volume") else f"<em>{esc(d['journal'])}</em>"
    loc = f", Article {esc(d['article_number'])}" if d.get("article_number") else (f", {esc(d['pages'])}" if d.get("pages") else "")
    if d.get("issue"):
        vol += f"({esc(d['issue'])})"
    return (f"{apa_authors(d['authors'])} ({year}). {esc(d['title'])}. {vol}{loc}. "
            f"https://doi.org/{esc(d['doi'])}")


def plain(text: str) -> str:
    return re.sub(r"<[^>]+>", "", text or "").strip()


# ---------- results chart ----------
def results_svg(r: dict) -> str:
    rows = []
    for g in r["groups"]:
        if g.get("name"):
            rows.append(("group", g["name"], None, False))
        rows += [("bar", b["label"], float(b["value"]), b.get("highlight", False)) for b in g["bars"]]
    unit = r.get("unit", "%")
    vmax = max(v for k, _, v, _ in rows if k == "bar")
    scale_max = 100.0 if unit == "%" else vmax * 1.1
    W, LAB, BAR, ROW, GH = 720, 230, 420, 34, 30
    y, parts = 6, []
    for kind, label, v, hl in rows:
        if kind == "group":
            parts.append(f'<text x="0" y="{y + 20}" font-size="15" font-weight="600" fill="#15203b">{esc(label)}</text>')
            y += GH
        else:
            w = max(2, BAR * v / scale_max)
            fill = "#e0a12a" if hl else "#8b96ad"
            parts.append(f'<text x="12" y="{y + 20}" font-size="14" fill="#1d2433">{esc(label)}</text>')
            parts.append(f'<rect x="{LAB}" y="{y + 6}" width="{w:.1f}" height="20" rx="3" fill="{fill}"/>')
            val = f"{v:g}{unit}"
            parts.append(f'<text x="{LAB + w + 8:.1f}" y="{y + 21}" font-size="14" font-weight="600" fill="#15203b">{esc(val)}</text>')
            y += ROW
    h = y + 6
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {h}" role="img" aria-label="{esc(r["title"])}" '
            f'font-family="Hanken Grotesk, Arial, sans-serif">{"".join(parts)}</svg>')


# ---------- tables ----------
def cell(x) -> str:
    x = "" if x is None else str(x)
    return re.sub(r"\^\{([^}]*)\}", r"<sup>\1</sup>", x)


def table_html(t: dict) -> str:
    cols = t["columns"]
    aligns = t.get("align", ["left"] + ["right"] * (len(cols) - 1))
    head = "".join(f'<th scope="col" class="a-{aligns[i]}">{cell(c)}</th>' for i, c in enumerate(cols))
    rows = []
    for r in t["rows"]:
        if isinstance(r, dict):
            cells = r["cells"]
            cls = ' class="row-group"' if r.get("group") else ""
        else:
            cells, cls = r, ""
        tds = "".join(f'<td class="a-{aligns[i]}">{cell(c)}</td>' for i, c in enumerate(cells))
        rows.append(f"<tr{cls}>{tds}</tr>")
    cap = f'Table {esc(t["id"])}. {esc(t["title"])}'
    note = f'<p class="table-note">{cell(t["note"])}</p>' if t.get("note") else ""
    table = (f'<div class="table-scroll"><table class="data-table" id="table-{esc(t["id"])}">'
             f'<thead><tr>{head}</tr></thead><tbody>{"".join(rows)}</tbody></table></div>{note}')
    if t.get("collapsed"):
        return f'<details class="table-block"><summary>{cap}</summary>{table}</details>'
    return f'<div class="table-block"><h3 class="table-title">{cap}</h3>{table}</div>'



# ---------- measurement scale toolkit ----------
def _tag(src: str) -> str:
    return ' <span class="q-tag">suggested wording</span>' if src == "suggested" else ""


def scale_parts(sc: dict) -> list:
    """Ordered questionnaire parts: (kind, title, payload)."""
    parts, n = [], 0
    for pq in sc.get("pre_questions", []):
        n += 1
        parts.append(("pre", f"Part {n}. {pq['title']}", pq))
    for dim in sc["dimensions"]:
        n += 1
        title = f"Part {n}. {dim['name']}" if n > 1 or len(sc["dimensions"]) > 1 else dim["name"]
        parts.append(("dim", title, dim))
    return parts


def scale_plain(sc: dict) -> str:
    """The questionnaire as plain text, for the copy button."""
    labels, codes = sc["response_labels"], sc["response_codes"]
    anchors = "; ".join(f"{c} = {l}" if l else str(c) for c, l in zip(codes, labels))
    intro = sc["introduction"]
    prefix = (sc.get("block_prefix", "") + " ") if sc.get("block_prefix") else ""
    lines = [sc["name"], "", intro.get("label", "Introduction").upper(), plain(intro["text"]), ""]
    for kind, title, x in scale_parts(sc):
        lines.append(title.upper())
        if kind == "pre":
            lines += [plain(x["text"]), "[Yes / No]" if x["type"] == "yesno" else "[open text answer]"]
            if x.get("note"):
                lines.append(plain(x["note"]))
            lines.append("")
        else:
            lines += [plain(prefix + sc["block_instruction"]), f"Response options: {anchors}", ""]
            lines += [f"{it['id']}. {plain(it['text'])}" for it in x["items"]]
            lines.append("")
    if sc.get("copy_footer"):
        lines += [plain(sc["copy_footer"]), ""]
    lines.append("Source: " + sc.get("cite_line", ""))
    return "\n".join(lines).strip() + "\n"


def scale_items_plain(sc: dict) -> str:
    out = []
    for dim in sc["dimensions"]:
        out.append(f"{dim['name']} ({dim['code']})")
        out += [f"{it['id']}\t{plain(it['text'])}" for it in dim["items"]]
        out.append("")
    return "\n".join(out).strip() + "\n"


def scale_html(d: dict, tables: list) -> str:
    sc = d["scale"]
    labels, codes = sc["response_labels"], sc["response_codes"]
    prefix = (sc.get("block_prefix", "") + " ") if sc.get("block_prefix") else ""
    facts = "".join(f'<div><dt>{esc(f["label"])}</dt><dd>{f["value"]}</dd></div>' for f in sc.get("facts", []))
    dl = "".join(f'<li><a class="kit-file" href="{esc(x["file"])}" download><span class="kit-ext">'
                 f'{esc(Path(x["file"]).suffix.lstrip(".").upper())}</span><span>{esc(x["label"])}</span></a></li>'
                 for x in sc.get("downloads", []))
    head_cells = "".join(f'<th scope="col"><span class="q-code">{c}</span>'
                         + (f'<span class="q-anchor">{esc(l)}</span>' if l else "") + "</th>"
                         for c, l in zip(codes, labels))
    dot = '<td><span class="q-dot" aria-hidden="true"></span></td>' * len(codes)
    wide = " q-table-wide" if len(codes) > 6 else ""
    intro = sc["introduction"]
    parts = [f'<div class="q-part q-intro"><h4>{esc(intro.get("label", "Introduction"))}{_tag(intro.get("source"))}</h4>'
             f'<p>{esc(intro["text"])}</p></div>']
    for kind, title, x in scale_parts(sc):
        if kind == "pre":
            answer = ('<div class="q-yesno" aria-hidden="true"><span class="q-dot"></span> Yes <span class="q-dot"></span> No</div>'
                      if x["type"] == "yesno" else '<div class="q-textbox" aria-hidden="true">Type your answer</div>')
            who = "<strong>For researchers:</strong> " if x.get("note_audience") == "researcher" else ""
            note = f'<p class="q-note">{who}{esc(x["note"])}</p>' if x.get("note") else ""
            parts.append(f'<div class="q-part"><h4>{esc(title)}{_tag(x.get("source"))}</h4>'
                         f'<p class="q-instr">{esc(x["text"])}</p>{answer}{note}</div>')
        else:
            rows = "".join(f'<tr><th scope="row"><span class="q-id">{esc(it["id"])}</span>{esc(it["text"])}</th>{dot}</tr>'
                           for it in x["items"])
            parts.append(
                '<div class="q-part">'
                f'<h4>{esc(title)} <span class="q-dim">{esc(x.get("definition", ""))}</span></h4>'
                f'<p class="q-instr">{esc(prefix + sc["block_instruction"])}{_tag(sc.get("block_instruction_source"))}</p>'
                f'<div class="table-scroll"><table class="q-table{wide}"><thead><tr>'
                f'<th scope="col" class="q-itemcol">Item</th>{head_cells}</tr></thead>'
                f'<tbody>{rows}</tbody></table></div></div>')
    admin = "".join(f"<li>{x}</li>" for x in sc.get("administration", []))
    scoring = "".join(f"<li>{x}</li>" for x in sc.get("scoring", []))
    bench = "".join(table_html(t) for t in tables)
    return (
        '<section class="paper-section scale-kit" id="use-the-scale">'
        '<h2>Use the scale</h2>'
        f'<p class="scale-name">{esc(sc["name"])}</p>'
        f'<p>{sc["summary"]}</p>'
        f'<dl class="glance scale-facts">{facts}</dl>'
        '<h3>Ready-to-use files</h3>'
        f'<ul class="kit-files">{dl}</ul>'
        '<div class="paper-actions kit-copy">'
        '<button type="button" class="btn btn-primary-ink" data-copy="q-text">Copy the full questionnaire</button>'
        '<button type="button" class="btn btn-line" data-copy="q-items">Copy the item list</button>'
        '<span class="copy-status" role="status" aria-live="polite"></span></div>'
        f'<pre class="copy-source" id="q-text" aria-hidden="true">{esc(scale_plain(sc))}</pre>'
        f'<pre class="copy-source" id="q-items" aria-hidden="true">{esc(scale_items_plain(sc))}</pre>'
        '<h3>The questionnaire</h3>'
        f'<div class="questionnaire">{"".join(parts)}</div>'
        f'<p class="licence">{esc(sc.get("intro_note", ""))}</p>'
        '<div class="implications">'
        f'<div><h3>How to administer</h3><ul class="limits">{admin}</ul></div>'
        f'<div><h3>How to score</h3><ul class="limits">{scoring}</ul></div>'
        '</div>'
        f'{bench}'
        '</section>')


# ---------- page ----------
def head_layer(d: dict, slug: str, url: str) -> str:
    authors = d["authors"]
    abstract = plain(" ".join(f["text"] for f in d["findings"]))
    ld_article = {
        "@context": "https://schema.org", "@type": "ScholarlyArticle",
        "headline": d["title"], "name": d["title"], "url": url,
        "author": [{"@type": "Person", "name": f"{a['given']} {a['family']}", "givenName": a["given"],
                    "familyName": a["family"], **({"sameAs": f"https://orcid.org/{a['orcid']}"} if a.get("orcid") else {}),
                    **({"affiliation": [{"@type": "Organization", "name": n} for n in a["affiliation"]]} if a.get("affiliation") else {})}
                   for a in authors],
        "datePublished": d["published"],
        "isPartOf": {"@type": "PublicationVolume", "volumeNumber": str(d.get("volume", "")),
                     "isPartOf": {"@type": "Periodical", "name": d["journal"], "issn": d.get("issn"),
                                  "publisher": {"@type": "Organization", "name": d.get("publisher")}}},
        "identifier": {"@type": "PropertyValue", "propertyID": "DOI", "value": d["doi"]},
        "sameAs": f"https://doi.org/{d['doi']}",
        "abstract": abstract, "description": plain(d["in_brief"]),
        "keywords": ", ".join(d.get("keywords", [])), "inLanguage": "en",
        "about": [{"@type": "DefinedTerm", "name": k} for k in d.get("keywords", [])],
        "isAccessibleForFree": bool(d.get("open_access")),
    }
    if d.get("scale"):
        sc = d["scale"]
        ld_article["hasPart"] = [{
            "@type": "CreativeWork", "name": sc["name"], "alternateName": sc.get("short"),
            "description": plain(sc["summary"]), "url": f"{url}#use-the-scale", "isAccessibleForFree": True,
            "keywords": "measurement scale, questionnaire, survey instrument",
            "encoding": [{"@type": "MediaObject", "name": x["label"], "contentUrl": f"{SITE}/papers/{x['file']}"}
                         for x in sc.get("downloads", [])]}]
    if d.get("article_number"):
        ld_article["pagination"] = str(d["article_number"])
    if d.get("licence_url"):
        ld_article["license"] = d["licence_url"]
    ld_faq = {"@context": "https://schema.org", "@type": "FAQPage",
              "mainEntity": [{"@type": "Question", "name": f["q"],
                              "acceptedAnswer": {"@type": "Answer", "text": plain(f["a"])}} for f in d.get("faq", [])]}
    meta = [f'<meta name="citation_title" content="{esc(d["title"])}">']
    for a in authors:
        meta.append(f'<meta name="citation_author" content="{esc(a["family"])}, {esc(a["given"])}">')
        if a.get("orcid"):
            meta.append(f'<meta name="citation_author_orcid" content="https://orcid.org/{esc(a["orcid"])}">')
        for inst in a.get("affiliation", []):
            meta.append(f'<meta name="citation_author_institution" content="{esc(inst)}">')
    meta += [f'<meta name="citation_publication_date" content="{d["published"].replace("-", "/")}">',
             f'<meta name="citation_journal_title" content="{esc(d["journal"])}">',
             f'<meta name="citation_doi" content="{esc(d["doi"])}">']
    if d.get("online"):
        meta.append(f'<meta name="citation_online_date" content="{d["online"].replace("-", "/")}">')
    for key, tag in [("issn", "citation_issn"), ("volume", "citation_volume"), ("issue", "citation_issue"),
                     ("publisher", "citation_publisher")]:
        if d.get(key):
            meta.append(f'<meta name="{tag}" content="{esc(d[key])}">')
    if d.get("article_number"):
        meta.append(f'<meta name="citation_firstpage" content="{esc(d["article_number"])}">')
    if d.get("aam"):
        meta.append(f'<meta name="citation_pdf_url" content="{SITE}/papers/manuscripts/{esc(d["aam"]["file"])}">')
    elif d.get("pdf_url"):
        meta.append(f'<meta name="citation_pdf_url" content="{esc(d["pdf_url"])}">')
    meta.append(f'<meta name="citation_keywords" content="{esc("; ".join(d.get("keywords", [])))}">')
    meta.append(f'<meta name="description" content="{esc(plain(d["in_brief"]))}">')
    meta.append(f'<link rel="canonical" href="{url}">')
    meta.append('<script type="application/ld+json">' + json.dumps(ld_article, ensure_ascii=False) + "</script>")
    if d.get("faq"):
        meta.append('<script type="application/ld+json">' + json.dumps(ld_faq, ensure_ascii=False) + "</script>")
    return "".join("    " + m + "\n" for m in meta)


def body(d: dict, pubs: dict, pages: dict) -> str:
    out = []
    names = []
    for a in d["authors"]:
        n = f"{esc(a['given'])} {esc(a['family'])}"
        if a.get("me"):
            names.append(f"<strong>{n}</strong>")
        elif a.get("orcid"):
            names.append(f'<a href="https://orcid.org/{esc(a["orcid"])}">{n}</a>')
        else:
            names.append(n)
    ref = f"<em>{esc(d['journal'])}</em>"
    if d.get("volume"):
        ref += f", volume {esc(d['volume'])}"
    if d.get("issue"):
        ref += f", issue {esc(d['issue'])}"
    if d.get("article_number"):
        ref += f", article {esc(d['article_number'])}"
    elif d.get("pages"):
        ref += f", pages {esc(d['pages'])}"
    ref += f", {esc(d.get('published_label', d['published'][:4]))}"
    kw = d.get("keywords", [])
    kw_html = ('<div class="paper-keywords"><span class="kw-label">Keywords</span><ul>'
               + "".join(f"<li>{esc(k)}</li>" for k in kw) + "</ul></div>") if kw else ""
    aam = d.get("aam")
    if aam:
        actions = (f'<a class="btn btn-primary-ink btn-download" href="manuscripts/{esc(aam["file"])}" download>'
                   f'{esc(aam.get("button", "Download the accepted manuscript (PDF)"))}</a>'
                   f'<a class="btn btn-line" href="https://doi.org/{esc(d["doi"])}">Published version</a>')
        aam_note = (f'<p class="aam-note">{esc(aam["note"])}</p>' if aam.get("note") else
                    '<p class="aam-note">Free full text: the authors&rsquo; accepted manuscript, identical in content '
                    'to the published article. Please cite the published version.</p>')
    else:
        actions = f'<a class="btn btn-primary-ink" href="https://doi.org/{esc(d["doi"])}">Read the article</a>'
        aam_note = ""
    if d.get("scale"):
        actions += '<a class="btn btn-line btn-scale" href="#use-the-scale">Use the scale</a>'
    badges = (['<li class="badge badge-open">Open access</li>'] if d.get("open_access") else []) + \
             [f'<li class="badge">{esc(b)}</li>' for b in d.get("badges", [])]
    out.append(f'''<div class="paper-head">
  <p class="paper-authors">{", ".join(names)}</p>
  <p class="paper-ref">{ref}</p>
  <ul class="badges" aria-label="Article features">{"".join(badges)}</ul>
  <div class="paper-actions">
    {actions}
    <button type="button" class="btn btn-line" data-copy="cite-apa">Copy citation</button>
    <span class="copy-status" role="status" aria-live="polite"></span>
  </div>
  {aam_note}
  {kw_html}
</div>''')
    out.append(f'<p class="paper-lede">{d["in_brief"]}</p>')

    out.append('<section class="paper-section"><h2>Key findings</h2><ol class="findings">' + "".join(
        f'<li><strong>{f["headline"]}</strong> {f["text"]}</li>' for f in d["findings"]) + "</ol></section>")

    scale_tables = [t for t in d.get("tables", []) if t.get("section") == "scale"]
    if d.get("scale"):
        d["scale"].setdefault("cite_line", plain(apa(d)).replace("&amp;", "&"))
        out.append(scale_html(d, scale_tables))

    out.append('<section class="paper-section"><h2>At a glance</h2><dl class="glance">' + "".join(
        f'<div><dt>{esc(g["label"])}</dt><dd>{g["value"]}</dd></div>' for g in d["glance"]) + "</dl></section>")

    figs = d.get("figures") or ([d["design_figure"]] if d.get("design_figure") else [])
    for fg in figs:
        svg = (ROOT / "papers" / fg["file"]).read_text()
        title = f'<h3 class="figure-title">{esc(fg["title"])}</h3>' if fg.get("title") else ""
        out.append(f'<figure class="paper-figure">{title}<div class="figure-scroll">{svg}</div>'
                   f'<figcaption>{fg["caption"]}</figcaption></figure>')

    r = d.get("results")
    if r:
        out.append(f'<figure class="paper-figure"><h3 class="figure-title">{esc(r["title"])}</h3>'
                   f'<div class="figure-scroll">{results_svg(r)}</div>'
                   f'<figcaption>{r.get("note", "")}</figcaption></figure>')

    web_tables = [t for t in d.get("tables", []) if t.get("web", True) and t.get("section") != "scale"]
    if web_tables:
        out.append('<section class="paper-section"><h2>Tables</h2>'
                   + "".join(table_html(t) for t in web_tables) + "</section>")

    out.append(f'<section class="paper-section"><h2>The question</h2><p>{d["question"]}</p></section>')

    imp = d["implications"]
    out.append(f'''<section class="paper-section"><h2>Implications</h2><div class="implications">
  <div><h3>Practical implications</h3><p>{imp["practical"]}</p></div>
  <div><h3>Theoretical implications</h3><p>{imp["theoretical"]}</p></div>
</div></section>''')

    if d.get("limitations"):
        out.append('<section class="paper-section"><h2>Limitations and future research</h2><ul class="limits">'
                   + "".join(f"<li>{x}</li>" for x in d["limitations"]) + "</ul></section>")

    if d.get("faq"):
        out.append('<section class="paper-section"><h2>Questions this paper answers</h2><div class="faq">' + "".join(
            f'<div class="faq-item"><h3>{esc(f["q"])}</h3><p>{f["a"]}</p></div>' for f in d["faq"]) + "</div></section>")

    if d.get("concepts"):
        out.append('<section class="paper-section"><h2>Key concepts</h2><dl class="concepts">' + "".join(
            f'<div><dt>{esc(c["term"])}</dt><dd>{c["definition"]}</dd></div>' for c in d["concepts"]) + "</dl></section>")

    if d.get("open_science") or d.get("materials"):
        sec = '<section class="paper-section"><h2>Open science and materials</h2>'
        if d.get("open_science"):
            sec += '<ul class="open-list">' + "".join(
                (f'<li><a href="{esc(o["url"])}">{esc(o["label"])}</a>' if o.get("url") else f'<li><strong>{esc(o["label"])}</strong>')
                + (f' <span>{esc(o["note"])}</span>' if o.get("note") else "") + "</li>"
                for o in d["open_science"]) + "</ul>"
        if d.get("materials"):
            sec += '<h3 class="materials-title">Study materials</h3><dl class="materials">' + "".join(
                f'<div><dt>{esc(m["label"])}</dt><dd>{m["text"]}</dd></div>' for m in d["materials"]) + "</dl>"
            if d.get("materials_note"):
                sec += f'<p class="licence">{esc(d["materials_note"])}</p>'
        out.append(sec + "</section>")

    out.append(f'''<section class="paper-section"><h2>How to cite</h2>
<p class="cite-block" id="cite-apa">{apa(d)}</p>''' + (
        f'<p class="licence">Open access under a Creative Commons {esc(d["licence"])} licence.</p>' if d.get("licence") else "")
        + "</section>")

    rel = []
    for doi in d.get("related", []):
        p = pubs.get(doi.lower())
        if not p:
            continue
        href = pages.get(doi.lower(), f"https://doi.org/{doi}")
        href = href.replace("papers/", "") if href.startswith("papers/") else href
        rel.append(f'<li><a href="{esc(href)}">{esc(p["title"].rstrip("."))}</a>'
                   f'<span>{esc(p["venue"])}, {p["year"]}</span></li>')
    if rel:
        out.append('<section class="paper-section"><h2>Related publications</h2><ul class="related">'
                   + "".join(rel) + "</ul></section>")

    out.append('<p class="back-link"><a href="../publications.html">All publications</a></p>')
    out.append('''<script>
(function () {
  document.querySelectorAll('[data-copy]').forEach(function (btn) {
    btn.addEventListener('click', function () {
      var status = btn.parentNode.querySelector('.copy-status');
      var el = document.getElementById(btn.dataset.copy), text = (el.tagName === 'PRE' ? el.textContent : el.innerText).trim();
      function done(m) { status.textContent = m; setTimeout(function () { status.textContent = ''; }, 2500); }
      function fallback() { var r = document.createRange(); r.selectNodeContents(el);
        var s = window.getSelection(); s.removeAllRanges(); s.addRange(r); done('Selected. Press Ctrl+C or ⌘C to copy.'); }
      try { navigator.clipboard.writeText(text).then(function () { done('Copied'); }, fallback); } catch (e) { fallback(); }
    });
  });
})();
</script>''')
    return "\n\n".join(out)


def build_page(path: Path, pubs: dict, pages: dict) -> dict:
    d = yaml.safe_load(path.read_text())
    slug = path.stem
    url = f"{SITE}/papers/{slug}.html"
    fm = {
        "title": d["title"],
        "subtitle": f"{d['journal']}, {d['published'][:4]}",
        "pagetitle": d["title"],
        "paper-doi": d["doi"],
        "page-layout": "article",
        "open-graph": {"description": plain(d["in_brief"])},
        "twitter-card": {"description": plain(d["in_brief"])},
    }
    text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
            + "include-in-header:\n  text: |\n" + head_layer(d, slug, url) + "---\n\n"
            + "<!-- GENERATED from papers/data/" + path.name + " by scripts/build_paper_pages.py. Edit the data file, not this page. -->\n\n"
            + "```{=html}\n" + body(d, pubs, pages) + "\n```\n")
    (ROOT / "papers" / f"{slug}.qmd").write_text(text)
    return {**d, "slug": slug, "url": url}


def build_llms(papers: list[dict]) -> None:
    lines = [
        "# Bruno Schivinski",
        "",
        "> Associate Professor of Marketing at Gdańsk University of Technology, Poland. "
        "Research on consumer engagement with brands in digital and social media, brand equity and consumer choice, "
        "digital behaviour and wellbeing, and measurement with structural equation modelling. "
        f"ORCID: https://orcid.org/{ME['orcid']}. LinkedIn: https://www.linkedin.com/in/bruno-schivinski-b2baa044",
        "",
        "## Main pages",
        f"- [Home]({SITE}/index.html): research themes, recent publications, teaching",
        f"- [Publications]({SITE}/publications.html): full list of journal articles, book chapters and conference papers",
        f"- [Teaching]({SITE}/teaching.html): teaching in marketing, consumer behaviour, digital marketing and research methods",
        f"- [Consultancy]({SITE}/consultancy.html): advice on digital marketing and online consumer behaviour",
        f"- [Marketing Watch]({SITE}/watch/index.html): weekly digest of new marketing research and practice",
        "",
        "## Paper summaries",
        "Each page gives the citation, key findings stated with their source, study design, implications and answers "
        "to common questions. Cite the original article (DOI) when using these findings.",
    ]
    for p in papers:
        free = (f" Free accepted manuscript: {SITE}/papers/manuscripts/{p['aam']['file']}" if p.get("aam") else "")
        if p.get("scale"):
            free += (f" Ready-to-use questionnaire, Qualtrics import file, codebook and R/Mplus scripts for the "
                     f"{p['scale']['name']}: {p['url']}#use-the-scale")
        lines.append(f"- [{p['title']}]({p['url']}): {plain(p['in_brief'])} Citation: {p['cite_short']}, "
                     f"{p['journal']}, https://doi.org/{p['doi']}.{free}")
    (ROOT / "llms.txt").write_text("\n".join(lines) + "\n")


def main() -> int:
    pubs_file = ROOT / "data" / "publications.json"
    pubs = {(p.get("doi") or "").lower(): p for p in json.loads(pubs_file.read_text())} if pubs_file.exists() else {}
    files = sorted(DATA.glob("*.yml"))
    if os.environ.get("PUBLISH") == "1":
        # public builds: only pages Bruno has approved ("locked"); drafts stay in the private preview
        files = [f for f in files if (yaml.safe_load(f.read_text()) or {}).get("status") == "locked"]
        for stale in (ROOT / "papers").glob("*.qmd"):
            if stale.stem not in {f.stem for f in files}:
                stale.unlink()
    pages = {}
    for f in files:
        d = yaml.safe_load(f.read_text())
        pages[d["doi"].lower()] = f"papers/{f.stem}.html"
    built = [build_page(f, pubs, pages) for f in files]
    build_llms(built)
    print(f"Built {len(built)} paper page(s) and llms.txt")
    return 0


if __name__ == "__main__":
    sys.exit(main())
