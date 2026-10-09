#!/usr/bin/env python3
"""Pull Bruno Schivinski's public works from ORCID and write the publications page.

Source of truth: the public ORCID record. Anything added to ORCID appears on the
site at the next weekly build. No API key is needed.

Outputs
  data/publications.json        cached copy (used as fallback if ORCID is down)
  _generated/publications.md    markdown included by publications.qmd
"""
from __future__ import annotations

import html
import json
import re
import sys
import time
import urllib.request
from pathlib import Path

ORCID = "0000-0002-4095-1922"
API = f"https://pub.orcid.org/v3.0/{ORCID}"
ROOT = Path(__file__).resolve().parent.parent
CACHE = ROOT / "data" / "publications.json"
OUT = ROOT / "_generated" / "publications.md"
HIDE = ROOT / "data" / "hide.txt"  # one DOI or exact title per line to suppress

SECTIONS = [
    ("journal-article", "Journal articles"),
    ("book-chapter", "Book chapters"),
    ("book", "Books"),
    ("conference-paper", "Conference papers"),
    ("preprint", "Working papers and preprints"),
]
OTHER = "Other outputs"


def get(url: str) -> dict:
    req = urllib.request.Request(url, headers={"Accept": "application/json",
                                               "User-Agent": "schivinski.github.io site builder"})
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.load(r)


def norm_title(t: str) -> str:
    return re.sub(r"[^a-z0-9]", "", t.lower())


def ext_id(work: dict, kind: str) -> str | None:
    for e in (work.get("external-ids") or {}).get("external-id", []) or []:
        if e.get("external-id-type") == kind and e.get("external-id-relationship", "self") == "self":
            return (e.get("external-id-normalized") or {}).get("value") or e.get("external-id-value")
    return None


def fetch() -> list[dict]:
    groups = get(f"{API}/works")["group"]
    # ORCID groups duplicates; take the preferred (highest display-index) summary
    codes = []
    for g in groups:
        s = max(g["work-summary"], key=lambda x: int(x.get("display-index") or 0))
        codes.append(str(s["put-code"]))
    works = []
    for i in range(0, len(codes), 100):
        for b in get(f"{API}/works/{','.join(codes[i:i + 100])}")["bulk"]:
            if "work" in b:
                works.append(b["work"])

    pubs, seen = [], set()
    for w in works:
        title = (((w.get("title") or {}).get("title") or {}).get("value") or "").strip()
        if not title:
            continue
        doi = ext_id(w, "doi")
        key = (doi or "").lower() or norm_title(title)
        if key in seen:
            continue
        seen.add(key)
        date = w.get("publication-date") or {}
        year = ((date.get("year") or {}).get("value")) if date else None
        authors = []
        for c in (w.get("contributors") or {}).get("contributor", []) or []:
            name = ((c.get("credit-name") or {}).get("value") or "").strip()
            if name and name not in authors:
                authors.append(name)
        url = f"https://doi.org/{doi}" if doi else ((w.get("url") or {}).get("value"))
        pubs.append({
            "title": title,
            "year": int(year) if year and year.isdigit() else None,
            "type": w.get("type") or "other",
            "venue": ((w.get("journal-title") or {}).get("value") or "").strip(),
            "authors": authors,
            "doi": doi,
            "url": url,
        })
    enrich_authors(pubs)
    pubs.sort(key=lambda p: (-(p["year"] or 0), p["title"].lower()))
    return pubs


def enrich_authors(pubs: list[dict]) -> None:
    """ORCID often lacks co-author lists; fill them from Crossref (free, no key).
    Results are reused from the cache so each DOI is looked up only once."""
    cached = {}
    if CACHE.exists():
        cached = {(p.get("doi") or "").lower(): p["authors"]
                  for p in json.loads(CACHE.read_text()) if p.get("doi") and p.get("authors")}
    for p in pubs:
        if p["authors"] or not p["doi"]:
            continue
        if p["doi"].lower() in cached:
            p["authors"] = cached[p["doi"].lower()]
            continue
        try:
            msg = get(f"https://api.crossref.org/works/{p['doi']}")["message"]
            p["authors"] = [" ".join(x for x in (a.get("given"), a.get("family")) if x)
                            for a in msg.get("author", []) if a.get("family")]
            if not p["venue"] and msg.get("container-title"):
                p["venue"] = msg["container-title"][0]
            time.sleep(0.2)
        except Exception as e:
            print(f"  Crossref lookup failed for {p['doi']}: {e}", file=sys.stderr)


def fmt_authors(authors: list[str]) -> str:
    out = []
    for a in authors:
        a = html.escape(a)
        out.append(f"**{a}**" if "schivinski" in a.lower() else a)
    if len(out) > 8:
        out = out[:7] + ["…", out[-1]]
    return ", ".join(out)


def render(pubs: list[dict]) -> str:
    hidden = set()
    if HIDE.exists():
        hidden = {l.strip().lower() for l in HIDE.read_text().splitlines() if l.strip() and not l.startswith("#")}
    pubs = [p for p in pubs if (p["doi"] or "").lower() not in hidden and p["title"].lower() not in hidden]

    known = {k for k, _ in SECTIONS}
    blocks = []
    toc = []
    for kind, label in SECTIONS + [(None, OTHER)]:
        items = [p for p in pubs if (p["type"] == kind if kind else p["type"] not in known)]
        if not items:
            continue
        anchor = re.sub(r"[^a-z]+", "-", label.lower()).strip("-")
        toc.append(f"[{label}](#{anchor}) ({len(items)})")
        lines = [f"## {label} {{#{anchor}}}", ""]
        year = object()
        for p in items:
            if p["year"] != year:
                year = p["year"]
                lines += ["", f"### {year or 'Undated'}", ""]
            title = html.escape(p["title"].rstrip("."))
            title = f"[{title}]({p['url']})" if p["url"] else title
            parts = [fmt_authors(p["authors"])] if p["authors"] else []
            parts.append(title)
            if p["venue"]:
                parts.append(f"*{html.escape(p['venue'])}*")
            lines.append("- " + " ".join(x.rstrip(".") + "." for x in parts))
        blocks.append("\n".join(lines))
    header = (f"{len(pubs)} outputs · " + " · ".join(toc) + "\n\n"
              ":::{.small-note}\nThis list updates automatically every week from my "
              f"[ORCID record](https://orcid.org/{ORCID}).\n:::\n")
    return header + "\n\n" + "\n\n".join(blocks) + "\n"


def main() -> int:
    try:
        pubs = fetch()
        if len(pubs) < 10:
            raise RuntimeError(f"only {len(pubs)} works returned; refusing to overwrite cache")
        CACHE.parent.mkdir(parents=True, exist_ok=True)
        CACHE.write_text(json.dumps(pubs, indent=1, ensure_ascii=False))
        print(f"ORCID: {len(pubs)} works")
    except Exception as e:  # keep the site building from the cached copy
        print(f"WARNING: ORCID fetch failed ({e}); using cached list", file=sys.stderr)
        if not CACHE.exists():
            return 1
        pubs = json.loads(CACHE.read_text())
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(render(pubs))
    return 0


if __name__ == "__main__":
    sys.exit(main())
