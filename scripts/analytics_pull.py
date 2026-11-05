#!/usr/bin/env python3
"""Pull GA4 + Search Console data for the private analytics report.

PRIVACY: this repo and its Actions logs are PUBLIC. This script never prints
metric values, queries, pages or countries, only row counts and OK/FAIL.
Output goes to the JSON file given by --out (never commit it).

Env: GOOGLE_SERVICE_ACCOUNT_JSON (full service-account key JSON).
Usage: python scripts/analytics_pull.py --days 28 --out analytics_snapshot.json
"""
import argparse
import datetime as dt
import json
import os
import sys

from google.auth.transport.requests import AuthorizedSession
from google.oauth2 import service_account

GA4_PROPERTY = "560083062"
GSC_SITE = "sc-domain:schivinski.com"
SCOPES = [
    "https://www.googleapis.com/auth/analytics.readonly",
    "https://www.googleapis.com/auth/webmasters.readonly",
]

GA4_REPORTS = {
    "totals": dict(dimensions=[], metrics=["sessions", "totalUsers", "screenPageViews",
                                           "engagementRate", "averageSessionDuration"]),
    "channels": dict(dimensions=["sessionDefaultChannelGroup"],
                     metrics=["sessions", "engagementRate"]),
    "sources": dict(dimensions=["sessionSource", "sessionMedium"], metrics=["sessions", "engagementRate"]),
    "countries": dict(dimensions=["country"], metrics=["sessions", "engagementRate"]),
    "pages": dict(dimensions=["pagePath"], metrics=["screenPageViews", "totalUsers", "engagementRate"]),
    "events": dict(dimensions=["eventName"], metrics=["eventCount"]),
    "daily": dict(dimensions=["date"], metrics=["sessions", "totalUsers", "screenPageViews"]),
}
GSC_DIMS = {"queries": ["query"], "pages": ["page"], "countries": ["country"],
            "daily": ["date"], "devices": ["device"]}


def session():
    info = json.loads(os.environ["GOOGLE_SERVICE_ACCOUNT_JSON"])
    creds = service_account.Credentials.from_service_account_info(info, scopes=SCOPES)
    return AuthorizedSession(creds)


def ga4_report(s, start, end, spec):
    body = {
        "dateRanges": [{"startDate": start, "endDate": end}],
        "dimensions": [{"name": d} for d in spec["dimensions"]],
        "metrics": [{"name": m} for m in spec["metrics"]],
        "limit": 1000,
    }
    r = s.post(f"https://analyticsdata.googleapis.com/v1beta/properties/{GA4_PROPERTY}:runReport", json=body)
    r.raise_for_status()
    out = []
    for row in r.json().get("rows", []):
        rec = {d: v["value"] for d, v in zip(spec["dimensions"], row.get("dimensionValues", []))}
        rec.update({m: float(v["value"]) for m, v in zip(spec["metrics"], row["metricValues"])})
        out.append(rec)
    return out


def gsc_report(s, start, end, dims):
    body = {"startDate": start, "endDate": end, "dimensions": dims, "rowLimit": 1000}
    site = site_enc()
    r = s.post(f"https://searchconsole.googleapis.com/webmasters/v3/sites/{site}/searchAnalytics/query", json=body)
    r.raise_for_status()
    out = []
    for row in r.json().get("rows", []):
        rec = dict(zip(dims, row["keys"]))
        rec.update(clicks=row["clicks"], impressions=row["impressions"],
                   ctr=row["ctr"], position=row["position"])
        out.append(rec)
    return out


INSPECT_URLS = ["https://schivinski.com/", "https://schivinski.com/watch/", "https://schivinski.com/mentoring.html"]


def inspect_url(s, url):
    """URL Inspection: indexing state and which canonical Google chose."""
    r = s.post("https://searchconsole.googleapis.com/v1/urlInspection/index:inspect",
               json={"inspectionUrl": url, "siteUrl": GSC_SITE})
    r.raise_for_status()
    ix = r.json().get("inspectionResult", {}).get("indexStatusResult", {})
    return {"url": url, "verdict": ix.get("verdict"), "coverage": ix.get("coverageState"),
            "user_canonical": ix.get("userCanonical"), "google_canonical": ix.get("googleCanonical"),
            "last_crawl": ix.get("lastCrawlTime"), "crawled_as": ix.get("crawledAs")}


def site_enc():
    from urllib.parse import quote
    return quote(GSC_SITE, safe="")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--days", type=int, default=28)
    ap.add_argument("--out", default="analytics_snapshot.json")
    a = ap.parse_args()

    end = dt.date.today() - dt.timedelta(days=1)
    start = end - dt.timedelta(days=a.days - 1)
    gsc_end = end - dt.timedelta(days=2)  # Search Console lags about 2 days
    s = session()
    snap = {"generated": dt.datetime.now(dt.timezone.utc).isoformat(),
            "window": {"start": start.isoformat(), "end": end.isoformat()},
            "ga4": {}, "gsc": {}}
    ok = True

    for name, spec in GA4_REPORTS.items():
        try:
            snap["ga4"][name] = ga4_report(s, start.isoformat(), end.isoformat(), spec)
            print(f"ga4/{name}: {len(snap['ga4'][name])} rows OK")
        except Exception as e:  # status only, no payload
            ok = False
            print(f"ga4/{name}: FAIL {type(e).__name__} {getattr(getattr(e, 'response', None), 'status_code', '')}")

    for name, dims in GSC_DIMS.items():
        try:
            snap["gsc"][name] = gsc_report(s, start.isoformat(), gsc_end.isoformat(), dims)
            print(f"gsc/{name}: {len(snap['gsc'][name])} rows OK")
        except Exception as e:
            ok = False
            print(f"gsc/{name}: FAIL {type(e).__name__} {getattr(getattr(e, 'response', None), 'status_code', '')}")

    try:
        snap["gsc"]["inspection"] = [inspect_url(s, u) for u in INSPECT_URLS]
        print(f"gsc/inspection: {len(snap['gsc']['inspection'])} rows OK")
    except Exception as e:
        ok = False
        print(f"gsc/inspection: FAIL {type(e).__name__} {getattr(getattr(e, 'response', None), 'status_code', '')}")

    with open(a.out, "w") as f:
        json.dump(snap, f)
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
