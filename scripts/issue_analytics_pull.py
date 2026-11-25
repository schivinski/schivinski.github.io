#!/usr/bin/env python3
"""Pull issue-level traffic for Marketing in 3 (GA4, Search Console, GoatCounter).

Used to decide which issues and topics attract readers (Bruno, 25 Nov 2026).

PRIVACY: this repo and its Actions logs are PUBLIC. This script prints only
row counts and OK/FAIL, never metric values, paths, queries or referrers.
Output goes to the JSON file given by --out (never commit it); the workflow
emails it to Bruno's own Gmail with scripts/email_snapshot.py.

Env: GOOGLE_SERVICE_ACCOUNT_JSON, GOATCOUNTER_TOKEN.
Usage: python scripts/issue_analytics_pull.py --since 2026-10-20 --gc-since 2026-06-01 --out issue_analytics.json
"""
import argparse
import datetime as dt
import json
import os
import sys
import time

import requests

sys.path.insert(0, os.path.dirname(__file__))
from analytics_pull import GA4_PROPERTY, session, site_enc  # noqa: E402

GC_BASE = "https://schivinski.goatcounter.com/api/v0"


def contains(field, value):
    return {"filter": {"fieldName": field, "stringFilter": {"matchType": "CONTAINS", "value": value}}}


GA4 = {
    # Daily views of every Marketing in 3 page (issues, hub, year tabs, subscribe).
    "watch_daily": dict(dimensions=["date", "pagePath"],
                        metrics=["screenPageViews", "totalUsers", "userEngagementDuration"],
                        filt=contains("pagePath", "/watch")),
    # Where issue readers come from.
    "issue_sources": dict(dimensions=["pagePath", "sessionSource", "sessionMedium"],
                          metrics=["screenPageViews", "totalUsers"],
                          filt=contains("pagePath", "/watch/posts/")),
    # Which issue pages people land on, and from where.
    "watch_landing": dict(dimensions=["landingPage", "sessionSource"],
                          metrics=["sessions", "engagedSessions", "totalUsers"],
                          filt=contains("landingPage", "/watch")),
    "issue_countries": dict(dimensions=["pagePath", "country"], metrics=["screenPageViews"],
                            filt=contains("pagePath", "/watch/posts/")),
    # Whole site, for context.
    "all_pages": dict(dimensions=["pagePath"],
                      metrics=["screenPageViews", "totalUsers", "userEngagementDuration"], filt=None),
}


def ga4_report(s, start, end, spec):
    out, offset = [], 0
    while True:
        body = {"dateRanges": [{"startDate": start, "endDate": end}],
                "dimensions": [{"name": d} for d in spec["dimensions"]],
                "metrics": [{"name": m} for m in spec["metrics"]],
                "limit": 10000, "offset": offset}
        if spec.get("filt"):
            body["dimensionFilter"] = spec["filt"]
        r = s.post(f"https://analyticsdata.googleapis.com/v1beta/properties/{GA4_PROPERTY}:runReport", json=body)
        r.raise_for_status()
        j = r.json()
        for row in j.get("rows", []):
            rec = {d: v["value"] for d, v in zip(spec["dimensions"], row.get("dimensionValues", []))}
            rec.update({m: float(v["value"]) for m, v in zip(spec["metrics"], row["metricValues"])})
            out.append(rec)
        offset += 10000
        if offset >= int(j.get("rowCount", 0)):
            return out


def gsc_report(s, start, end, dims, value):
    out, start_row = [], 0
    while True:
        body = {"startDate": start, "endDate": end, "dimensions": dims, "rowLimit": 5000, "startRow": start_row,
                "dimensionFilterGroups": [{"filters": [{"dimension": "page", "operator": "contains",
                                                        "expression": value}]}]}
        r = s.post(f"https://searchconsole.googleapis.com/webmasters/v3/sites/{site_enc()}/searchAnalytics/query",
                   json=body)
        r.raise_for_status()
        rows = r.json().get("rows", [])
        for row in rows:
            rec = dict(zip(dims, row["keys"]))
            rec.update(clicks=row["clicks"], impressions=row["impressions"], position=row["position"])
            out.append(rec)
        if len(rows) < 5000:
            return out
        start_row += 5000


def gc_get(s, path, **params):
    """GoatCounter GET with retries: 429 (rate limit) and the intermittent 404 seen on /stats/hits."""
    last = None
    for attempt in range(5):
        r = s.get(f"{GC_BASE}{path}", params=params, timeout=60)
        if r.status_code in (404, 429, 500, 502, 503):
            last = r
            time.sleep(int(r.headers.get("Retry-After", "0") or 0) + 3 * (attempt + 1))
            continue
        r.raise_for_status()
        return r.json()
    last.raise_for_status()


def gc_watch_hits(s, window):
    """Every /watch path with total count and nonzero daily counts, paginated."""
    paths, seen = [], []
    for _ in range(20):
        params = dict(window, limit=100, filter="/watch", daily="true")
        if seen:
            params["exclude_paths"] = ",".join(str(x) for x in seen)
        j = gc_get(s, "/stats/hits", **params)
        batch = j.get("hits", [])
        for h in batch:
            days = [[d.get("day"), d.get("daily")] for d in (h.get("stats") or []) if d.get("daily")]
            paths.append({"path": h.get("path"), "path_id": h.get("path_id"), "title": h.get("title"),
                          "count": h.get("count"), "event": h.get("event"), "days": days})
            seen.append(h.get("path_id"))
        if not j.get("more") or not batch:
            break
        time.sleep(1)
    return paths


def gc_refs(s, window, path_id):
    j = gc_get(s, f"/stats/hits/{path_id}", limit=20, **window)
    return [{"name": x.get("name"), "count": x.get("count")} for x in j.get("refs", j.get("stats", []))]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--since", default="2026-10-20", help="GA4 and Search Console start date")
    ap.add_argument("--gc-since", default="2026-06-01", help="GoatCounter start date")
    ap.add_argument("--out", default="issue_analytics.json")
    a = ap.parse_args()

    end = dt.date.today() - dt.timedelta(days=1)
    snap = {"generated": dt.datetime.now(dt.timezone.utc).isoformat(),
            "window": {"ga4_start": a.since, "ga4_end": end.isoformat(), "gc_start": a.gc_since},
            "ga4": {}, "gsc": {}, "goatcounter": {}}
    ok = True

    def run(group, name, fn):
        nonlocal ok
        try:
            snap[group][name] = fn()
            print(f"{group}/{name}: {len(snap[group][name])} rows OK")
        except Exception as e:  # status only, no payload
            ok = False
            print(f"{group}/{name}: FAIL {type(e).__name__} {getattr(getattr(e, 'response', None), 'status_code', '')}")

    if os.environ.get("GOOGLE_SERVICE_ACCOUNT_JSON"):
        s = session()
        for name, spec in GA4.items():
            run("ga4", name, lambda spec=spec: ga4_report(s, a.since, end.isoformat(), spec))
        gsc_end = (end - dt.timedelta(days=2)).isoformat()
        snap["window"]["gsc_end"] = gsc_end
        run("gsc", "watch_pages", lambda: gsc_report(s, a.since, gsc_end, ["page"], "/watch"))
        run("gsc", "issue_queries", lambda: gsc_report(s, a.since, gsc_end, ["page", "query"], "/watch/posts/"))
    else:
        ok = False
        print("ga4: SKIPPED no credentials")

    if os.environ.get("GOATCOUNTER_TOKEN"):
        g = requests.Session()
        g.headers["Authorization"] = f"Bearer {os.environ['GOATCOUNTER_TOKEN']}"
        g.headers["Content-Type"] = "application/json"
        now_hour = dt.datetime.now(dt.timezone.utc).replace(minute=0, second=0, microsecond=0)
        window = dict(start=a.gc_since + "T00:00:00Z", end=now_hour.strftime("%Y-%m-%dT%H:%M:%SZ"))
        run("goatcounter", "watch_hits", lambda: gc_watch_hits(g, window))
        issues = [h for h in snap["goatcounter"].get("watch_hits", [])
                  if (h.get("path") or "").startswith("/watch/posts/") and not h.get("event")]
        issues.sort(key=lambda h: -(h.get("count") or 0))

        def refs():
            out = {}
            for h in issues[:40]:
                out[h["path"]] = gc_refs(g, window, h["path_id"])
                time.sleep(0.5)
            return out
        run("goatcounter", "issue_refs", refs)
    else:
        ok = False
        print("goatcounter: SKIPPED no token")

    with open(a.out, "w") as f:
        json.dump(snap, f)
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
