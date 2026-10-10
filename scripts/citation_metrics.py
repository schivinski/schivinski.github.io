#!/usr/bin/env python3
"""Weekly citation tracking and h-index booster.

Google Scholar cannot be read by the build, so this combines:
  * data/scholar.yml       : Scholar snapshot (counts per work, profile totals, date), from Bruno's printed profile;
  * OpenAlex (if reachable): citations per work and per year, fetched every run;
  * data/citations.json    : Crossref counts (refreshed by fetch_publications.py), used when OpenAlex is unreachable;
  * data/citation_history.json : weekly log of those counts, so growth since the Scholar snapshot is measurable.

Estimated Scholar count for a work = Scholar snapshot count + (external count now - external count at the snapshot date).
From the estimates it computes the h-index, the next threshold (h + 1) and, for every work below it, how many citations
are still needed and how fast the work is gaining them. Output: data/metrics.json, which fetch_publications.py uses to
choose the "Highlighted papers" on the home page.

Usage: citation_metrics.py [--offline]
"""
from __future__ import annotations

import datetime as dt
import json
import os
import re
import sys
import time
import urllib.request
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
ORCID = "0000-0002-4095-1922"
OA_CACHE = ROOT / "data" / "openalex.json"
HISTORY = ROOT / "data" / "citation_history.json"
SCHOLAR = ROOT / "data" / "scholar.yml"
CROSSREF = ROOT / "data" / "citations.json"
OUT = ROOT / "data" / "metrics.json"

WINDOW = 15            # works needing more than this many citations to reach h + 1 are ignored
MIN_HISTORY_DAYS = 28  # history needed before a velocity is estimated from weekly counts


def norm(t: str) -> str:
    return re.sub(r"[^a-z0-9 ]", "", re.sub(r"\s+", " ", t.lower().replace("’", "'"))).strip()


def pub_key(p: dict) -> str:
    return (p.get("doi") or "").lower() or "t:" + norm(p["title"])[:80]


def site_works() -> dict:
    pubs = json.loads((ROOT / "data" / "publications.json").read_text())
    extra = ROOT / "data" / "extra_publications.yml"
    if extra.exists():
        pubs += yaml.safe_load(extra.read_text()) or []
    return {pub_key(p): p for p in pubs if p["type"] == "journal-article"}


def get(url: str) -> dict:
    headers = {"User-Agent": "schivinski.github.io site builder (mailto:bruno.schivinski@gmail.com)"}
    if os.environ.get("OPENALEX_API_KEY"):
        headers["Authorization"] = "Bearer " + os.environ["OPENALEX_API_KEY"]
    req = urllib.request.Request(url, headers=headers)
    last = None
    for attempt in range(3):
        try:
            with urllib.request.urlopen(req, timeout=60) as r:
                return json.load(r)
        except Exception as e:
            last = e
            time.sleep(4 * (attempt + 1))
    raise last


def fetch_openalex() -> dict:
    works, cursor = {}, "*"
    while cursor:
        data = get(f"https://api.openalex.org/works?filter=author.orcid:{ORCID}&per-page=200&cursor={cursor}"
                   "&select=doi,title,publication_year,cited_by_count,counts_by_year")
        for w in data["results"]:
            doi = (w.get("doi") or "").lower().replace("https://doi.org/", "")
            if not doi:
                continue
            c = w.get("cited_by_count") or 0
            if doi in works and works[doi]["count"] >= c:
                continue
            works[doi] = {"count": c, "by_year": {str(x["year"]): x["cited_by_count"] for x in w.get("counts_by_year", [])}}
        cursor = data.get("meta", {}).get("next_cursor")
        time.sleep(0.2)
    return works


def velocity(doi: str, ext: dict, hist: dict, today: dt.date) -> tuple[float, str]:
    """Citations per month: from OpenAlex per-year counts if available, else from the weekly history."""
    by_year = ext.get(doi, {}).get("by_year")
    if by_year:
        y = today.year
        frac = today.timetuple().tm_yday / 365.0
        last12 = by_year.get(str(y), 0) + by_year.get(str(y - 1), 0) * (1 - frac)
        return last12 / 12.0, "openalex"
    dates = sorted(d for d in hist if doi in hist[d])
    if len(dates) >= 2:
        d0, d1 = dt.date.fromisoformat(dates[0]), dt.date.fromisoformat(dates[-1])
        # use the entry about 8 weeks back, or the earliest one
        target = d1 - dt.timedelta(days=56)
        base = next((d for d in dates if dt.date.fromisoformat(d) >= target), dates[0])
        days = (d1 - dt.date.fromisoformat(base)).days
        if days >= MIN_HISTORY_DAYS:
            return max(0, hist[dates[-1]][doi] - hist[base][doi]) / (days / 30.4), "history"
    return 0.0, "none"


def main() -> int:
    today = dt.date.today()
    works = site_works()

    ext: dict = {}
    if "--offline" in sys.argv and OA_CACHE.exists():
        ext = json.loads(OA_CACHE.read_text())["works"]
    else:
        try:
            ext = fetch_openalex()
            OA_CACHE.write_text(json.dumps({"as_of": today.isoformat(), "works": ext}, indent=0, ensure_ascii=False))
            print(f"OpenAlex: {len(ext)} works")
        except Exception as e:
            print(f"WARNING: OpenAlex unavailable ({e}); falling back to Crossref counts", file=sys.stderr)
            if OA_CACHE.exists():
                ext = json.loads(OA_CACHE.read_text())["works"]
    cross = json.loads(CROSSREF.read_text()) if CROSSREF.exists() else {}
    counts_now = {}
    for k in works:
        if k in ext:
            counts_now[k] = ext[k]["count"]
        elif k in cross:
            counts_now[k] = cross[k]

    hist = json.loads(HISTORY.read_text()) if HISTORY.exists() else {}
    hist[today.isoformat()] = counts_now
    HISTORY.write_text(json.dumps(dict(sorted(hist.items())), indent=0))

    snap = yaml.safe_load(SCHOLAR.read_text()) if SCHOLAR.exists() else {}
    snap_date = str(snap.get("as_of", ""))
    gs = {k.lower(): v for k, v in (snap.get("papers") or {}).items()}
    dates = sorted(hist)
    base_date = next((d for d in dates if d >= snap_date), dates[0])
    base = hist[base_date]

    est = {}
    for k, c in gs.items():
        growth = max(0, counts_now.get(k, 0) - base.get(k, counts_now.get(k, 0)))
        est[k] = c + growth
    for k, c in counts_now.items():
        est.setdefault(k, c)
    extra = [int(x) for x in (snap.get("other_counts") or [])]

    counts = sorted(list(est.values()) + extra, reverse=True)
    h = sum(1 for i, c in enumerate(counts, start=1) if c >= i)
    target = h + 1
    have = sum(1 for c in counts if c >= target)

    cands = []
    for k, c in est.items():
        if k not in works or c >= target or target - c > WINDOW:
            continue
        v, src = velocity(k, ext, hist, today)
        need = target - c
        cands.append({"key": k, "count": c, "need": need, "per_month": round(v, 2), "velocity_source": src,
                      "months_to_cross": round(need / v, 1) if v > 0 else None,
                      "year": works[k].get("year"), "title": works[k]["title"]})
    cands.sort(key=lambda x: (x["months_to_cross"] is None, x["months_to_cross"] or 0, x["need"]))

    OUT.write_text(json.dumps({
        "as_of": today.isoformat(), "scholar_snapshot": snap_date or None, "baseline": base_date,
        "h_index": h, "scholar_h_index": (snap.get("totals") or {}).get("h_index"), "next_threshold": target,
        "papers_at_threshold": have, "counts": est, "h_candidates": cands,
    }, indent=1, ensure_ascii=False))
    print(f"h-index {h} (Scholar snapshot {(snap.get('totals') or {}).get('h_index')}); next threshold {target}")
    for c in cands[:8]:
        print(f"  {c['count']:>3} (+{c['need']}) {c['per_month']:>5}/mo  {c['year']}  {c['title'][:70]}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
