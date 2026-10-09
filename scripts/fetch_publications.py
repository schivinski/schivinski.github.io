#!/usr/bin/env python3
"""Pull Bruno Schivinski's public works from ORCID and write the publications page.

Source of truth: the public ORCID record. Anything added to ORCID appears on the
site at the next weekly build. No API key is needed.

Outputs
  data/publications.json        cached copy (used as fallback if ORCID is down)
  _generated/publications.md    publication list included by publications.qmd
  _generated/recent.md          latest articles shown on the home page
"""
from __future__ import annotations

import html
import json
import re
import sys
import time
import unicodedata
import urllib.request
from pathlib import Path

ORCID = "0000-0002-4095-1922"
API = f"https://pub.orcid.org/v3.0/{ORCID}"
ROOT = Path(__file__).resolve().parent.parent
CACHE = ROOT / "data" / "publications.json"
OUT = ROOT / "_generated" / "publications.md"
HIDE = ROOT / "data" / "hide.txt"  # one DOI or exact title per line to suppress



def get(url: str) -> dict:
    req = urllib.request.Request(url, headers={"Accept": "application/json",
                                               "User-Agent": "schivinski.github.io site builder"})
    with urllib.request.urlopen(req, timeout=60) as r:
        # some ORCID records store Polish letters in decomposed form (s + accent);
        # normalise so search and sorting treat "ś" as one character
        return json.loads(unicodedata.normalize("NFC", r.read().decode("utf-8")))


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
        title = html.unescape((((w.get("title") or {}).get("title") or {}).get("value") or "")).strip()
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
            "venue": html.unescape(((w.get("journal-title") or {}).get("value") or "")).strip(),
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


TYPE_LABEL = {
    "journal-article": "Journal article",
    "book-chapter": "Book chapter",
    "book": "Book",
    "conference-paper": "Conference paper",
}
SHOWN_TYPES = set(TYPE_LABEL)   # working papers, preprints and other outputs are left off the site
FILTERS = [("all", "All"), ("journal-article", "Journal articles"), ("book-chapter", "Book chapters"),
           ("book", "Books"), ("conference-paper", "Conference papers")]
PAPERS_DIR = ROOT / "papers"   # one page per paper, built from papers/data/<slug>.yml


def paper_pages() -> dict:
    """Map DOI -> site path for papers that have their own page (papers/data/<slug>.yml)."""
    pages = {}
    for f in sorted((PAPERS_DIR / "data").glob("*.yml")):
        m = re.search(r'^doi:\s*"?([^"\n]+)"?\s*$', f.read_text(), re.M)
        if m:
            pages[m.group(1).strip().lower()] = f"papers/{f.stem}.html"
    return pages


PAGES: dict = {}


def esc(x: str) -> str:
    return html.escape(x or "", quote=True)


def fmt_authors(authors: list[str]) -> str:
    out = []
    for a in authors:
        out.append(f"<strong>{esc(a)}</strong>" if "schivinski" in a.lower() else esc(a))
    if len(out) > 8:
        out = out[:7] + ["…", out[-1]]
    return ", ".join(out)


def kind(p: dict) -> str:
    return p["type"] if p["type"] in TYPE_LABEL else "other"


def entry(p: dict, heading: str = "h3") -> str:
    title = esc(p["title"].rstrip("."))
    page = PAGES.get((p["doi"] or "").lower())
    if page:
        title = f'<a href="{page}">{title}</a>'
    elif p["url"]:
        title = f'<a href="{esc(p["url"])}">{title}</a>'
    authors = f'<p class="pub-authors">{fmt_authors(p["authors"])}</p>' if p["authors"] else ""
    venue = f'<span class="pub-venue">{esc(p["venue"])}</span>' if p["venue"] else ""
    label = TYPE_LABEL.get(p["type"], "Other output")
    if page:
        label += '</span><span class="pub-more">Summary and figures'

    search = esc(" ".join([p["title"], p["venue"], " ".join(p["authors"]), str(p["year"] or "")]).lower())
    return (f'<article class="pub" data-type="{kind(p)}" data-search="{search}">'
            f'<{heading} class="pub-title">{title}</{heading}>{authors}'
            f'<p class="pub-meta">{venue}<span class="pub-type">{label}</span></p></article>')


def visible(pubs: list[dict]) -> list[dict]:
    hidden = set()
    if HIDE.exists():
        hidden = {l.strip().lower() for l in HIDE.read_text().splitlines() if l.strip() and not l.startswith("#")}
    return [p for p in pubs if p["type"] in SHOWN_TYPES
            and (p["doi"] or "").lower() not in hidden and p["title"].lower() not in hidden]


def render(pubs: list[dict]) -> str:
    pubs = visible(pubs)
    counts = {k: sum(1 for p in pubs if kind(p) == k) for k, _ in FILTERS[1:]}
    counts["all"] = len(pubs)
    chips = "".join(
        f'<button type="button" class="chip" data-filter="{k}" aria-pressed="{"true" if k == "all" else "false"}">'
        f'{lab} <span class="chip-n">{counts[k]}</span></button>'
        for k, lab in FILTERS if counts.get(k))
    years, groups = [], {}
    for p in pubs:
        y = p["year"] or "Undated"
        if y not in groups:
            years.append(y)
            groups[y] = []
        groups[y].append(entry(p))
    body = "".join(
        f'<section class="pub-year"><h2 class="year">{y}</h2><div class="pub-items">{"".join(groups[y])}</div></section>'
        for y in years)
    return f"""```{{=html}}
<div class="pub-tools">
  <label class="pub-search" for="pub-q"><span class="visually-hidden">Search publications</span>
    <input id="pub-q" type="search" placeholder="Search by title, journal, co-author or year" autocomplete="off"></label>
  <div class="chips" role="group" aria-label="Filter by type">{chips}</div>
  <p class="pub-count" aria-live="polite">Showing <span id="pub-shown">{len(pubs)}</span> of {len(pubs)} publications</p>
</div>
<div id="pub-list">{body}</div>
<p id="pub-empty" class="pub-empty" hidden>No publications match. Clear the search or choose another type.</p>
<script>
(function () {{
  var q = document.getElementById('pub-q'), chips = document.querySelectorAll('.chip'),
      shown = document.getElementById('pub-shown'), empty = document.getElementById('pub-empty'), type = 'all';
  function apply() {{
    var term = q.value.trim().toLowerCase(), n = 0;
    document.querySelectorAll('.pub-year').forEach(function (sec) {{
      var any = false;
      sec.querySelectorAll('.pub').forEach(function (el) {{
        var ok = (type === 'all' || el.dataset.type === type) && (!term || el.dataset.search.indexOf(term) > -1);
        el.hidden = !ok; if (ok) {{ any = true; n++; }}
      }});
      sec.hidden = !any;
    }});
    shown.textContent = n; empty.hidden = n > 0;
  }}
  chips.forEach(function (c) {{ c.addEventListener('click', function () {{
    type = c.dataset.filter;
    chips.forEach(function (o) {{ o.setAttribute('aria-pressed', o === c ? 'true' : 'false'); }});
    apply();
  }}); }});
  q.addEventListener('input', apply);
}})();
</script>
```
"""


def render_recent(pubs: list[dict], n: int = 4) -> str:
    items = [p for p in visible(pubs) if p["type"] == "journal-article" and p["authors"]][:n]
    return "```{=html}\n<div class=\"recent-pubs\">" + "".join(
        entry(p, "h3").replace('<article class="pub"', f'<article class="pub" data-year="{p["year"]}"', 1)
        for p in items) + "</div>\n```\n"


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
    PAGES.update(paper_pages())
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(render(pubs))
    (OUT.parent / "recent.md").write_text(render_recent(pubs))
    return 0


if __name__ == "__main__":
    sys.exit(main())
