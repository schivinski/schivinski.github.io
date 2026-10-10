#!/usr/bin/env python3
"""Build teaching.qmd from data/teaching.yml.

Page: intro, a logo strip of the institutions, one section per institution (logo, roles, units, course cards grouped by
level, each linked to the official course card), and an invitation block. JSON-LD: Person with hasOccupation entries
and one schema.org Course per course (provider, level, credits, hours, language, syllabus link).
"""
from __future__ import annotations

import html
import json
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = "https://schivinski.github.io"


def esc(x) -> str:
    return html.escape(str(x or ""), quote=True)


def course_card(c: dict, inst: dict) -> str:
    status = '<span class="tc-status now">Teaching now</span>' if c.get("status") == "current" else \
        '<span class="tc-status">Previously taught</span>'
    meta = [esc(c.get("programme", ""))]
    if c.get("ects"):
        meta.append(f'{c["ects"]:g} ECTS')
    if c.get("hours"):
        meta.append(f'{sum(c["hours"].values()):g} contact hours')
    meta.append("English")
    hours = ""
    if c.get("hours"):
        hours = '<p class="tc-hours">' + " · ".join(f"{k} {v:g} h" for k, v in c["hours"].items()) \
                + (f' · {esc(c["delivery"])}' if c.get("delivery") else "") + "</p>"
    body = ""
    if c.get("aim"):
        body += f'<p class="tc-aim">{esc(c["aim"])}</p>'
    if c.get("project"):
        body += f'<p class="tc-project"><strong>What students do:</strong> {esc(c["project"])}</p>'
    if c.get("topics"):
        body += ('<details class="tc-topics"><summary>Topics</summary><ul>'
                 + "".join(f"<li>{esc(t)}</li>" for t in c["topics"]) + "</ul></details>")
    foot = []
    if c.get("assessment"):
        foot.append(f'<span><strong>Assessment:</strong> {esc(c["assessment"])}</span>')
    if c.get("role"):
        foot.append(f'<span><strong>Role:</strong> {esc(c["role"])}</span>')
    code = f'<span class="tc-code">{esc(c["code"])}</span>' if c.get("code") else ""
    link = (f'<a class="tc-card-link" href="{esc(c["card"])}">Official course card (PDF)</a>' if c.get("card") else "")
    return (f'<article class="tc-course" id="{inst["id"]}-{esc(c["title"].lower().replace(" ", "-"))}-{esc(c.get("code", "x")).lower()}">'
            f'<div class="tc-top">{status}{code}</div>'
            f'<h4>{esc(c["title"])}</h4><p class="tc-meta">{" · ".join(m for m in meta if m)}</p>{hours}{body}'
            + (f'<p class="tc-foot">{"".join(foot)}</p>' if foot else "") + link + "</article>")


def institution(inst: dict) -> str:
    roles = "".join(f'<li><span class="tr-title">{esc(r["title"])}</span><span class="tr-years">{esc(r["years"])}</span></li>'
                    for r in inst.get("roles", []))
    units = "".join(f"<li>{esc(u)}</li>" for u in inst.get("units", []))
    groups = ""
    for g in inst.get("groups", []):
        groups += (f'<h3 class="tc-level">{esc(g["level"])}</h3><div class="tc-grid">'
                   + "".join(course_card(c, inst) for c in g["courses"]) + "</div>")
    return (f'<section class="t-inst" id="{inst["id"]}">'
            f'<header class="t-inst-head"><img class="t-logo" src="{esc(inst["logo"])}" alt="{esc(inst["logo_alt"])}" '
            f'width="240" height="146" loading="lazy">'
            f'<div><h2>{esc(inst["name"])}</h2><p class="t-inst-sub">{esc(inst.get("local_name", ""))}'
            f'{" · " if inst.get("local_name") else ""}{esc(inst["country"])}</p>'
            f'<p class="t-inst-sum">{esc(inst.get("summary", ""))}</p></div></header>'
            f'<div class="t-inst-facts"><div><h3>Roles</h3><ul class="t-roles">{roles}</ul></div>'
            f'<div><h3>Teaching in</h3><ul class="t-units">{units}</ul></div></div>'
            f"{groups}</section>")


def jsonld(d: dict) -> str:
    courses = []
    for inst in d["institutions"]:
        prov = {"@type": "CollegeOrUniversity", "name": inst["name"], "url": inst.get("url"),
                "alternateName": inst.get("local_name")}
        for g in inst.get("groups", []):
            for c in g["courses"]:
                item = {"@type": "Course", "name": c["title"], "provider": prov, "inLanguage": "en",
                        "educationalLevel": g["level"],
                        "instructor": {"@type": "Person", "@id": f"{SITE}/#bruno", "name": "Bruno Schivinski"}}
                if c.get("code"):
                    item["courseCode"] = c["code"]
                if c.get("aim"):
                    item["description"] = c["aim"].strip()
                if c.get("ects"):
                    item["numberOfCredits"] = {"@type": "StructuredValue", "value": c["ects"], "unitText": "ECTS"}
                if c.get("topics"):
                    item["teaches"] = c["topics"]
                if c.get("card"):
                    item["syllabusSections"] = {"@type": "Syllabus", "name": "Official course card", "url": c["card"]}
                if c.get("hours"):
                    item["hasCourseInstance"] = {"@type": "CourseInstance", "courseMode": "onsite",
                                                 "courseWorkload": f"PT{int(sum(c['hours'].values()))}H",
                                                 "instructor": {"@id": f"{SITE}/#bruno"}}
                courses.append(item)
    person = {"@type": "Person", "@id": f"{SITE}/#bruno", "name": "Bruno Schivinski", "url": f"{SITE}/",
              "jobTitle": "Associate Professor of Marketing",
              "worksFor": {"@type": "CollegeOrUniversity", "name": "Gdańsk University of Technology"},
              "hasOccupation": {"@type": "Occupation", "name": "University professor of marketing",
                                "skills": "Marketing, consumer behaviour, digital marketing, structural equation modelling, multivariate research methods"}}
    page = {"@type": "ProfilePage", "url": f"{SITE}/teaching.html", "name": "Teaching – Bruno Schivinski",
            "mainEntity": {"@id": f"{SITE}/#bruno"}}
    ld = {"@context": "https://schema.org", "@graph": [page, person] + courses}
    return '    <script type="application/ld+json">' + json.dumps(ld, ensure_ascii=False) + "</script>\n"


def main() -> int:
    d = yaml.safe_load((ROOT / "data" / "teaching.yml").read_text())
    strip = "".join(f'<a href="#{i["id"]}" class="t-strip-item"><img src="{esc(i["logo"])}" alt="{esc(i["name"])}" '
                    f'loading="lazy"></a>' for i in d["institutions"])
    n_courses = sum(len(g["courses"]) for i in d["institutions"] for g in i.get("groups", []))
    desc = ("Courses Bruno Schivinski teaches in marketing, consumer behaviour, digital marketing and research methods, "
            "with official course cards; open to visiting teaching and guest lectures.")
    fm = {"title": "Teaching",
          "subtitle": "Marketing, consumer behaviour, digital marketing and research methods, taught in English from bachelor's to doctoral level",
          "description": desc, "page-layout": "full", "body-classes": "teaching-page"}
    inv = d.get("invite", {})
    invite = (f'<section class="t-invite"><h2>{esc(inv.get("title"))}</h2><p>{esc(inv.get("text"))}</p>'
              f'<a class="btn-invite" href="{esc(inv["link"]["url"])}">{esc(inv["link"]["label"])}</a></section>'
              if inv else "")
    body = (f'<div class="t-wrap"><p class="t-intro">{esc(d["intro"])}</p>'
            f'<nav class="t-strip" aria-label="Institutions">{strip}</nav>'
            + "".join(institution(i) for i in d["institutions"]) + invite + "</div>")
    text = ("---\n" + yaml.safe_dump(fm, allow_unicode=True, sort_keys=False, width=1000)
            + "include-in-header:\n  text: |\n" + jsonld(d) + "---\n\n"
            + "<!-- GENERATED from data/teaching.yml by scripts/build_teaching.py. Edit the data file. -->\n\n"
            + "```{=html}\n" + body + "\n```\n")
    (ROOT / "teaching.qmd").write_text(text)
    print(f"Teaching page: {len(d['institutions'])} institution(s), {n_courses} course(s)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
