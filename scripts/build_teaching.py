#!/usr/bin/env python3
"""Build teaching.qmd from data/teaching.yml.

Page: intro; logo strip; course portfolio grouped by area (alphabetical within each area), each course with its core
textbook(s) and cover, a chapter-based outline, levels, role, and where it was taught; institutions with roles; an
invitation block. JSON-LD: ProfilePage, Person, and one schema.org Course per course (with textbooks as `workExample`
-style citations and a CourseInstance per institution where it was taught).
"""
from __future__ import annotations

import html
import json
import re
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.github.io"


def esc(x) -> str:
    return html.escape(str(x or ""), quote=True)


def md(x: str) -> str:
    return re.sub(r"\*(.+?)\*", r"<em>\1</em>", esc(x.strip()))


def plain(x: str) -> str:
    return re.sub(r"\*", "", x).strip()


def book(b: dict) -> str:
    title = re.search(r"\*(.+?)\*", b["cite"])
    t = title.group(1) if title else b["cite"]
    if b.get("cover"):
        img = f'<img src="{esc(b["cover"])}" alt="Cover of {esc(t)}" loading="lazy" width="150" height="210">'
    else:  # no cover available: typographic stand-in
        img = f'<div class="tb-plain" role="img" aria-label="{esc(t)}"><span>{esc(t)}</span></div>'
    inner = f'<figure class="tb">{img}<figcaption>{md(b["cite"])}</figcaption></figure>'
    return f'<a class="tb-link" href="{esc(b["url"])}">{inner}</a>' if b.get("url") else inner


def course(c: dict, insts: dict, role: str) -> str:
    levels = "".join(f'<span class="cp-level">{esc(l)}</span>' for l in c.get("levels", []))
    taught = ""
    if c.get("taught"):
        rows = []
        for t in c["taught"]:
            i = insts[t["inst"]]
            bits = [f'<strong>{esc(i["short"])}</strong>']
            if t.get("as") and t["as"] != c["title"]:
                bits.append(f'as “{esc(t["as"])}”')
            if t.get("programme"):
                bits.append(f'· {esc(t["programme"])}')
            if t.get("years"):
                bits.append(f'· {esc(t["years"])}')
            rows.append(f'<li><img src="{esc(i.get("mark", i["logo"]))}" alt="" width="40" height="24">'
                        f'<span>{" ".join(bits)}</span></li>')
        taught = f'<div class="cp-taught"><h4>Taught at</h4><ul>{"".join(rows)}</ul></div>'
    outline = ('<details class="cp-outline"><summary>Course outline</summary><ol>'
               + "".join(f"<li>{esc(o)}</li>" for o in c.get("outline", [])) + "</ol></details>")
    books = "".join(book(b) for b in c.get("textbooks", []))
    label = "Core textbook" if len(c.get("textbooks", [])) == 1 else "Core textbooks"
    return (f'<article class="cp-course" id="{esc(c["id"])}">'
            f'<div class="cp-main"><div class="cp-levels">{levels}</div><h3>{esc(c["title"])}</h3>'
            f'<p class="cp-role">{esc(role)}</p><p class="cp-sum">{esc(c["summary"].strip())}</p>{outline}{taught}</div>'
            f'<div class="cp-books"><h4>{label}</h4><div class="cp-book-row">{books}</div></div></article>')


def institution(i: dict, courses: list) -> str:
    roles = "".join(f'<li><span>{esc(r["title"])}</span><span class="tr-years">{esc(r["years"])}</span></li>'
                    for r in i.get("roles", []))
    taught = sorted({c["title"] for c in courses if any(t["inst"] == i["id"] for t in c.get("taught", []))})
    links = ", ".join(f'<a href="#{next(c["id"] for c in courses if c["title"] == t)}">{esc(t)}</a>' for t in taught)
    return (f'<article class="t-inst" id="{esc(i["id"])}"><img class="t-logo" src="{esc(i["logo"])}" '
            f'alt="{esc(i["name"])} logo" width="220" height="134" loading="lazy">'
            f'<div><h3>{esc(i["name"])}</h3><p class="t-inst-sub">{esc(i.get("local_name", ""))}'
            f'{" · " if i.get("local_name") else ""}{esc(i["country"])}</p><ul class="t-roles">{roles}</ul>'
            f'<p class="t-inst-units">{esc(" · ".join(i.get("units", [])))}</p>'
            + (f'<p class="t-inst-courses"><strong>Courses:</strong> {links}</p>' if links else "")
            + "</div></article>")


def jsonld(d: dict, insts: dict) -> str:
    items = []
    for c in d["courses"]:
        it = {"@type": "Course", "@id": f"{SITE}/teaching.html#{c['id']}", "name": c["title"],
              "description": plain(c["summary"]), "inLanguage": "en", "educationalLevel": ", ".join(c.get("levels", [])),
              "teaches": c.get("outline", []),
              "instructor": {"@id": f"{SITE}/#bruno"}}
        provs = []
        for t in c.get("taught", []):
            i = insts[t["inst"]]
            provs.append({"@type": "CourseInstance", "name": t.get("as", c["title"]), "courseMode": "onsite",
                          "instructor": {"@id": f"{SITE}/#bruno"},
                          "location": {"@type": "CollegeOrUniversity", "name": i["name"], "url": i.get("url")}})
        if c.get("taught"):
            i0 = insts[c["taught"][0]["inst"]]
            it["provider"] = {"@type": "CollegeOrUniversity", "name": i0["name"], "url": i0.get("url")}
            it["hasCourseInstance"] = provs
        it["citation"] = [plain(b["cite"]) for b in c.get("textbooks", [])]
        items.append(it)
    person = {"@type": "Person", "@id": f"{SITE}/#bruno", "name": "Bruno Schivinski", "url": f"{SITE}/",
              "jobTitle": "Associate Professor of Marketing",
              "worksFor": {"@type": "CollegeOrUniversity", "name": "Gdańsk University of Technology"},
              "knowsAbout": [c["title"] for c in d["courses"]]}
    page = {"@type": "ProfilePage", "url": f"{SITE}/teaching.html", "name": "Teaching – Bruno Schivinski",
            "mainEntity": {"@id": f"{SITE}/#bruno"}}
    return ('    <script type="application/ld+json">'
            + json.dumps({"@context": "https://schema.org", "@graph": [page, person] + items}, ensure_ascii=False)
            + "</script>\n")


def main() -> int:
    d = yaml.safe_load((ROOT / "data" / "teaching.yml").read_text())
    insts = {i["id"]: i for i in d["institutions"]}
    role = d.get("role", "")
    strip = "".join(f'<a href="#{esc(i["id"])}" class="t-strip-item"><img src="{esc(i["logo"])}" alt="{esc(i["name"])}" '
                    f'loading="lazy"></a>' for i in d["institutions"])
    nav = "".join(f'<a href="#{esc(c["id"])}">{esc(c["title"])}</a>'
                  for a in d["areas"] for c in sorted([c for c in d["courses"] if c["area"] == a], key=lambda c: c["title"]))
    portfolio = ""
    for a in d["areas"]:
        cs = sorted([c for c in d["courses"] if c["area"] == a], key=lambda c: c["title"])
        portfolio += (f'<h3 class="cp-area">{esc(a)}</h3>' + "".join(course(c, insts, role) for c in cs))
    inv = d.get("invite", {})
    invite = (f'<section class="t-invite"><h2>{esc(inv["title"])}</h2><p>{esc(inv["text"])}</p>'
              f'<a class="btn-invite" href="{esc(inv["link"]["url"])}">{esc(inv["link"]["label"])}</a></section>') if inv else ""
    body = (f'<div class="t-wrap"><p class="t-intro">{esc(d["intro"])}</p>'
            f'<nav class="t-strip" aria-label="Institutions">{strip}</nav>'
            f'<section class="t-portfolio"><h2>Course portfolio</h2><nav class="cp-nav" aria-label="Courses">{nav}</nav>'
            f'{portfolio}</section>'
            f'<section class="t-insts"><h2>Where I have taught</h2>'
            + "".join(institution(i, d["courses"]) for i in d["institutions"]) + f"</section>{invite}</div>")
    fm = {"title": "Teaching",
          "subtitle": "Marketing, consumer behaviour, digital marketing, advertising and research methods, taught in English from bachelor's to doctoral level",
          "description": ("Course portfolio of Bruno Schivinski: marketing, consumer behaviour, digital marketing, advertising, "
                          "marketing research, multivariate methods and structural equation modelling, with core textbooks "
                          "and course outlines. Open to visiting teaching and guest lectures."),
          "page-layout": "full", "body-classes": "teaching-page"}
    text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
            + "include-in-header:\n  text: |\n" + jsonld(d, insts) + "---\n\n"
            + "<!-- GENERATED from data/teaching.yml by scripts/build_teaching.py. Edit the data file. -->\n\n"
            + "```{=html}\n" + body + "\n```\n")
    (ROOT / "teaching.qmd").write_text(text)
    print(f"Teaching page: {len(d['institutions'])} institution(s), {len(d['courses'])} course(s)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
