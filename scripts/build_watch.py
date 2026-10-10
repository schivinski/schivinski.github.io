#!/usr/bin/env python3
"""Build Marketing Watch issue pages from watch/issues/<week>-<slug>.yml.

Each data file becomes watch/posts/<slug>/index.qmd with:
  * a practitioner page: short answer, takeaways, findings with charts, how to apply, what to expect, limits,
    FAQ, two "also new" items, the citation;
  * search and AI-discovery markup: description, Open Graph / Twitter image, JSON-LD (BlogPosting with the
    paper as `about` and `citation`, FAQPage, BreadcrumbList), keywords, and an entry in llms.txt.
Only issues with `status: live` are built on public builds. See watch/WATCH_GUIDE.md.
"""
from __future__ import annotations

import datetime as dt
import html
import json
import os
import re
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.github.io"
ISSUES = ROOT / "watch" / "issues"
POSTS = ROOT / "watch" / "posts"
AUTHOR = {
    "@type": "Person", "@id": f"{SITE}/#bruno", "name": "Bruno Schivinski", "url": f"{SITE}/",
    "jobTitle": "Associate Professor of Marketing",
    "affiliation": {"@type": "CollegeOrUniversity", "name": "Gdańsk University of Technology"},
    "sameAs": ["https://orcid.org/0000-0002-4095-1922",
               "https://scholar.google.com/citations?user=f-iKGD8AAAAJ",
               "https://www.linkedin.com/in/bruno-schivinski-b2baa044"],
}
INK, AMBER, BAR, MUTED, RULE = "#15203b", "#e0a12a", "#aab3c5", "#5b6476", "#dde1e8"


def esc(x) -> str:
    return html.escape(str(x or ""), quote=True)


def md(text: str) -> str:
    """Minimal inline markdown: **bold**, *italic*; escapes everything else."""
    t = esc(text.strip())
    t = re.sub(r"\*\*(.+?)\*\*", r"<strong>\1</strong>", t)
    t = re.sub(r"(?<!\*)\*(?!\*)(.+?)\*", r"<em>\1</em>", t)
    return t


def plain(text: str) -> str:
    return re.sub(r"\s+", " ", re.sub(r"\*+", "", text)).strip()


def paras(text: str) -> str:
    return "".join(f"<p>{md(p)}</p>" for p in re.split(r"\n\s*\n", text.strip()) if p.strip())


def long_date(d: str) -> str:
    x = dt.date.fromisoformat(d)
    return f"{x.day} {x.strftime('%B %Y')}"


def apa(p: dict) -> str:
    a = p["authors"]
    names = ", ".join(a[:-1]) + ", & " + a[-1] if len(a) > 1 else a[0]
    vol = f", <em>{esc(p['volume'])}</em>" if p.get("volume") else ""
    iss = f"({esc(p['issue'])})" if p.get("issue") else ""
    pages = f", {esc(p['pages'])}" if p.get("pages") else ""
    return (f"{esc(names)} ({p['year']}). {esc(p['title'])}. <em>{esc(p['journal'])}</em>{vol}{iss}{pages}. "
            f'<a href="https://doi.org/{esc(p["doi"])}">https://doi.org/{esc(p["doi"])}</a>')


def chart_svg(c: dict, cid: str) -> str:
    """Horizontal bar chart, one series; the highlighted bar(s) in amber, values labelled at the bar end."""
    lo, hi = c["scale"]
    dec = c.get("decimals", 2)
    W, LAB, ROW, PAD = 680, 250, 40, 70
    plot = W - LAB - PAD
    H = ROW * len(c["bars"]) + 34
    x = lambda v: LAB + (v - lo) / (hi - lo) * plot
    g = []
    # recessive grid
    span = hi - lo
    step = 1 if span > 4 else 0.5
    v = lo
    while v <= hi + 1e-9:
        g.append(f'<line x1="{x(v):.1f}" y1="4" x2="{x(v):.1f}" y2="{H - 26}" stroke="{RULE}" stroke-width="1"/>'
                 f'<text x="{x(v):.1f}" y="{H - 8}" font-size="12" text-anchor="middle" fill="{MUTED}">{v:g}</text>')
        v += step
    for i, b in enumerate(c["bars"]):
        label, val = b[0], b[1]
        hl = len(b) > 2 and b[2]
        y = 8 + i * ROW
        w = max(2, x(val) - LAB)
        unit = c.get("unit", "")
        vtxt = f"{val:.{dec}f}{'%' if unit == '%' else ''}"
        fw = ' font-weight="600"' if hl else ""
        utxt = "" if unit == "%" else " " + esc(unit)
        g.append(f'<g><title>{esc(label)}: {vtxt}{utxt}</title>'
                 f'<text x="{LAB - 12}" y="{y + 19}" font-size="13.5" text-anchor="end" fill="{INK}"{fw}>{esc(label)}</text>'
                 f'<rect x="{LAB}" y="{y + 4}" width="{w:.1f}" height="22" rx="4" fill="{AMBER if hl else BAR}"/>'
                 f'<text x="{LAB + w + 8:.1f}" y="{y + 20}" font-size="13.5" fill="{INK}"{fw}>{vtxt}</text></g>')
    svg = (f'<svg viewBox="0 0 {W} {H}" role="img" aria-labelledby="{cid}-t" '
           f'font-family="Hanken Grotesk, Arial, sans-serif"><title id="{cid}-t">{esc(c["title"])}</title>{"".join(g)}</svg>')
    rows = "".join(f"<tr><th scope=\"row\">{esc(b[0])}</th><td>{b[1]}</td></tr>" for b in c["bars"])
    table = (f'<div class="mw-sr"><table><caption>{esc(c["title"])}</caption>'
             f"<tr><th>Group</th><th>Value ({esc(c.get('unit', ''))})</th></tr>{rows}</table></div>")
    return (f'<figure class="mw-chart" id="{cid}"><figcaption class="mw-chart-title">{esc(c["title"])}</figcaption>'
            f'<div class="mw-chart-svg">{svg}</div>{table}'
            f'<p class="mw-chart-src">{esc(c.get("source", ""))}</p></figure>')


def body(d: dict, prev_next: tuple) -> str:
    p = d["paper"]
    img = d["image"]
    out = [f'<p class="mw-kicker">Marketing Watch · Issue {d["issue"]} · Week of {long_date(d["week_of"])}</p>',
           f'<figure class="mw-hero"><img src="../../images/{esc(img["file"])}" alt="{esc(img["alt"])}" '
           f'width="1600" height="900" fetchpriority="high"><figcaption>{esc(img["caption"])}</figcaption></figure>',
           f'<section class="mw-answer" aria-label="Short answer"><h2>The short answer</h2><p>{md(d["short_answer"])}</p></section>',
           '<section class="mw-takeaways"><h2>Key takeaways</h2><ul>'
           + "".join(f"<li>{md(t)}</li>" for t in d["takeaways"]) + "</ul></section>"]
    charts = d.get("charts", {})
    for s in d["sections"]:
        sid = re.sub(r"[^a-z0-9]+", "-", s["h"].lower()).strip("-")
        out.append(f'<section id="{sid}"><h2>{esc(s["h"])}</h2>{paras(s["body"])}')
        if s.get("facts"):
            out.append('<dl class="mw-facts">' + "".join(f"<div><dt>{esc(k)}</dt><dd>{md(v)}</dd></div>"
                                                          for k, v in s["facts"]) + "</dl>")
        if s.get("chart"):
            out.append(chart_svg(charts[s["chart"]], f"chart-{s['chart']}"))
        out.append("</section>")
    out.append('<section id="how-to-apply-it"><h2>How to apply it</h2><ol class="mw-steps">'
               + "".join(f"<li><strong>{esc(a)}.</strong> {md(b)}</li>" for a, b in d["how_to"]) + "</ol></section>")
    out.append('<section id="what-to-expect"><h2>What to expect</h2><ul class="mw-list">'
               + "".join(f"<li>{md(x)}</li>" for x in d["expect"]) + "</ul></section>")
    out.append('<section id="where-it-does-not-work"><h2>Where it does not work</h2><ul class="mw-list">'
               + "".join(f"<li>{md(x)}</li>" for x in d["limits"]) + "</ul></section>")
    out.append('<section id="questions"><h2>Questions marketers ask</h2>'
               + "".join(f'<div class="mw-faq"><h3>{esc(f["q"])}</h3><p>{md(f["a"])}</p></div>' for f in d["faq"])
               + "</section>")
    if d.get("also"):
        out.append('<section id="also-new"><h2>Also new this week</h2><div class="mw-also">'
                   + "".join(f'<article><p class="mw-also-src"><em>{esc(a["journal"])}</em> · {a["year"]}</p>'
                             f'<h3><a href="https://doi.org/{esc(a["doi"])}">{esc(a["title"])}</a></h3>'
                             f'<p class="mw-also-au">{esc(a["authors"])}</p><p>{md(a["text"])}</p></article>'
                             for a in d["also"]) + "</div></section>")
    oa = (f' Open access ({esc(p["licence"])}): free to read at the publisher.' if p.get("open_access") else "")
    out.append(f'<section id="source" class="mw-source"><h2>Source</h2><p class="mw-cite">{apa(p)}</p>'
               f'<p class="mw-note">This brief is written for practitioners from the published article.{oa} '
               f'Numbers are as reported by the authors; read the article for full methods.</p></section>')
    out.append('<div class="mw-author"><img src="../../../assets/bruno.jpg" alt="Bruno Schivinski" width="64" height="64">'
               '<div><p><strong>Bruno Schivinski</strong> is Associate Professor of Marketing at Gdańsk University of '
               'Technology. He studies how consumers engage with brands in digital and social media.</p>'
               '<p><a href="../../../index.html">About Bruno</a> · <a href="../../index.html">All Marketing Watch issues</a> · '
               '<a href="../../index.xml">RSS feed</a></p></div></div>')
    prev, nxt = prev_next
    nav = []
    if prev:
        nav.append(f'<a class="mw-prev" href="../{prev["slug"]}/index.html"><span>Previous issue</span>{esc(prev["short_title"])}</a>')
    if nxt:
        nav.append(f'<a class="mw-next" href="../{nxt["slug"]}/index.html"><span>Next issue</span>{esc(nxt["short_title"])}</a>')
    if nav:
        out.append('<nav class="mw-pn" aria-label="More issues">' + "".join(nav) + "</nav>")
    out.append(f'<p class="mw-published">Published {long_date(d["published"])}.</p>')
    return "\n".join(out)


def jsonld(d: dict, url: str) -> str:
    p = d["paper"]
    img_url = f"{SITE}/watch/images/{d['image']['og']}"
    hero = f"{SITE}/watch/images/{d['image']['file']}"

    def scholarly(doi, title, authors, journal, year):
        return {"@type": "ScholarlyArticle", "name": title, "headline": title, "sameAs": f"https://doi.org/{doi}",
                "identifier": {"@type": "PropertyValue", "propertyID": "DOI", "value": doi},
                "author": [{"@type": "Person", "name": a} for a in authors],
                "datePublished": str(year), "isPartOf": {"@type": "Periodical", "name": journal}}

    lead = scholarly(p["doi"], p["title"], p.get("authors_full", p["authors"]), p["journal"], p["year"])
    words = len(re.findall(r"\w+", json.dumps(d, ensure_ascii=False)))
    graph = [
        {"@type": "BlogPosting", "@id": f"{url}#article", "mainEntityOfPage": url, "url": url,
         "headline": d["title"], "alternativeHeadline": d["short_title"], "description": plain(d["description"]),
         "abstract": plain(d["short_answer"]),
         "image": [{"@type": "ImageObject", "url": img_url, "width": 1200, "height": 630},
                   {"@type": "ImageObject", "url": hero, "width": 1600, "height": 900}],
         "datePublished": d["published"], "dateModified": d.get("modified", d["published"]),
         "author": AUTHOR, "publisher": {"@id": AUTHOR["@id"]},
         "isPartOf": {"@type": "Blog", "name": "Marketing Watch", "url": f"{SITE}/watch/index.html"},
         "articleSection": "Marketing Watch", "position": d["issue"],
         "keywords": ", ".join(d["keywords"]), "inLanguage": "en", "wordCount": words,
         "about": [lead] + [{"@type": "Thing", "name": t} for t in d.get("topics", [])],
         "citation": [lead] + [scholarly(a["doi"], a["title"], [a["authors"]], a["journal"], a["year"]) for a in d.get("also", [])],
         "isAccessibleForFree": True},
        {"@type": "FAQPage", "@id": f"{url}#faq",
         "mainEntity": [{"@type": "Question", "name": f["q"], "acceptedAnswer": {"@type": "Answer", "text": plain(f["a"])}}
                        for f in d["faq"]]},
        {"@type": "BreadcrumbList", "itemListElement": [
            {"@type": "ListItem", "position": 1, "name": "Home", "item": f"{SITE}/index.html"},
            {"@type": "ListItem", "position": 2, "name": "Marketing Watch", "item": f"{SITE}/watch/index.html"},
            {"@type": "ListItem", "position": 3, "name": d["short_title"], "item": url}]},
    ]
    ld = json.dumps({"@context": "https://schema.org", "@graph": graph}, ensure_ascii=False)
    meta = [f'<script type="application/ld+json">{ld}</script>',
            f'<meta name="keywords" content="{esc(", ".join(d["keywords"]))}">',
            f'<meta name="author" content="Bruno Schivinski">',
            f'<meta property="og:type" content="article">',
            f'<meta property="article:published_time" content="{d["published"]}">',
            f'<meta property="article:author" content="Bruno Schivinski">',
            f'<meta property="article:section" content="Marketing Watch">',
            f'<link rel="canonical" href="{url}">']
    meta += [f'<meta property="article:tag" content="{esc(k)}">' for k in d["keywords"][:8]]
    return "\n".join("    " + m for m in meta) + "\n"


def build(d: dict, prev_next: tuple) -> dict:
    slug = d["slug"]
    url = f"{SITE}/watch/posts/{slug}/index.html"
    fm = {
        "title": d["title"],
        "subtitle": plain(d["dek"]),
        "description": plain(d["description"]),
        "date": d["week_of"],
        "date-format": "D MMMM YYYY",
        "language": {"title-block-published": "Week of"},
        "categories": d.get("topics", []),
        "image": f"../../images/{d['image']['og']}",
        "image-alt": d["image"]["alt"],
        "open-graph": {"title": d["title"], "description": plain(d["description"]),
                       "image": f"../../images/{d['image']['og']}", "image-width": 1200, "image-height": 630},
        "twitter-card": {"title": d["title"], "description": plain(d["description"]), "card-style": "summary_large_image",
                         "image": f"../../images/{d['image']['og']}"},
        "page-layout": "article",
        "body-classes": "mw-page",
        "issue": d["issue"],
    }
    text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
            + "include-in-header:\n  text: |\n" + jsonld(d, url) + "---\n\n"
            + f"<!-- GENERATED from watch/issues/{d['_file']} by scripts/build_watch.py. Edit the data file. -->\n\n"
            + "```{=html}\n" + body(d, prev_next) + "\n```\n")
    out = POSTS / slug
    out.mkdir(parents=True, exist_ok=True)
    (out / "index.qmd").write_text(text)
    return {**d, "url": url}


def llms(built: list[dict]) -> None:
    f = ROOT / "llms.txt"
    txt = f.read_text() if f.exists() else ""
    txt = txt.split("\n## Marketing Watch issues")[0].rstrip("\n") + "\n"
    if built:
        txt += ("\n## Marketing Watch issues\nWeekly briefs that translate new research from leading marketing journals "
                "for practitioners: what the study found, how to apply it, what to expect. Cite the original article.\n")
        for d in sorted(built, key=lambda x: x["week_of"], reverse=True):
            p = d["paper"]
            txt += (f"- [{d['title']}]({d['url']}): {plain(d['short_answer'])} Source: {p['authors'][0].split(',')[0]} et al., "
                    f"{p['year']}, {p['journal']}, https://doi.org/{p['doi']}.\n")
    f.write_text(txt)


def main() -> int:
    files = sorted(ISSUES.glob("*.yml"))
    data = []
    for f in files:
        d = yaml.safe_load(f.read_text())
        d["_file"] = f.name
        if "published" not in d:          # first build: stamp the real publication date into the data file
            d["published"] = dt.date.today().isoformat()
            f.write_text(f.read_text().replace("status:", f'published: "{d["published"]}"\nstatus:', 1))
        if os.environ.get("PUBLISH") == "1" and d.get("status") != "live":
            continue
        data.append(d)
    data.sort(key=lambda d: d["week_of"])
    keep = {d["slug"] for d in data}
    if os.environ.get("PUBLISH") == "1":
        for stale in POSTS.glob("*/index.qmd"):
            if stale.parent.name not in keep and (stale.read_text().find("GENERATED from watch/issues") >= 0):
                stale.unlink()
    built = [build(d, (data[i - 1] if i else None, data[i + 1] if i + 1 < len(data) else None)) for i, d in enumerate(data)]
    llms(built)
    print(f"Built {len(built)} Marketing Watch issue(s)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
