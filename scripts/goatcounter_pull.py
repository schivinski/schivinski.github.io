#!/usr/bin/env python3
"""Pull GoatCounter stats for the private analytics report.

PRIVACY: this repo and its Actions logs are PUBLIC. This script prints only
row counts and OK/FAIL, never metric values, paths or referrers.
Output goes to the JSON file given by --out (never commit it).

Env: GOATCOUNTER_TOKEN (API token with read statistics access).
Usage: python scripts/goatcounter_pull.py --days 28 --out goatcounter_snapshot.json
"""
import argparse
import datetime as dt
import json
import os
import sys
import time

import requests

BASE = "https://schivinski.goatcounter.com/api/v0"
PAGES = ["toprefs", "locations", "browsers", "systems", "sizes", "languages", "campaigns"]


def get(s, path, **params):
    for attempt in range(3):
        r = s.get(f"{BASE}{path}", params=params, timeout=60)
        if r.status_code == 429:  # rate limited, wait and retry
            time.sleep(int(r.headers.get("Retry-After", "5")) + 1)
            continue
        r.raise_for_status()
        return r.json()
    r.raise_for_status()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--days", type=int, default=28)
    ap.add_argument("--out", default="goatcounter_snapshot.json")
    a = ap.parse_args()

    end = dt.date.today()
    start = end - dt.timedelta(days=a.days)
    window = dict(start=start.isoformat() + "T00:00:00Z", end=end.isoformat() + "T23:59:59Z")

    s = requests.Session()
    s.headers["Authorization"] = f"Bearer {os.environ['GOATCOUNTER_TOKEN']}"
    s.headers["Content-Type"] = "application/json"

    snap = {"generated": dt.datetime.now(dt.timezone.utc).isoformat(),
            "window": {"start": start.isoformat(), "end": end.isoformat()}}
    ok = True

    def run(name, fn):
        nonlocal ok
        try:
            snap[name] = fn()
            n = len(snap[name]) if isinstance(snap[name], (list, dict)) else 1
            print(f"goatcounter/{name}: {n} items OK")
        except Exception as e:  # status only, no payload
            ok = False
            code = getattr(getattr(e, "response", None), "status_code", "")
            print(f"goatcounter/{name}: FAIL {type(e).__name__} {code}")

    hourly = dict(start=start.isoformat() + "T00:00:00Z",
                  end=dt.datetime.now(dt.timezone.utc).replace(minute=0, second=0, microsecond=0)
                  .strftime("%Y-%m-%dT%H:%M:%SZ"))

    def hits():
        h = get(s, "/stats/hits", limit=100, **window)
        # Overall totals ride along in the hits response; keep them for the report.
        snap["totals_from_hits"] = {k: v for k, v in h.items() if isinstance(v, (int, float))}
        return h.get("hits", [])

    run("hits", hits)
    # Extra, non-fatal: the dedicated totals endpoint (returned 404 on 5 Nov 2026).
    try:
        snap["total"] = get(s, "/stats/total", **hourly)
        print("goatcounter/total: OK")
    except Exception as e:
        code = getattr(getattr(e, "response", None), "status_code", "")
        print(f"goatcounter/total: skipped {type(e).__name__} {code}")
    for page in PAGES:
        run(page, lambda p=page: get(s, f"/stats/{p}", limit=100, **window).get("stats", []))

    with open(a.out, "w") as f:
        json.dump(snap, f)
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
