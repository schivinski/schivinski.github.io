#!/usr/bin/env python3
"""Tell Bing (and other IndexNow engines) which pages changed, after each public deploy.
Key file: /316433b063da86628eea6ac290ebe7f0.txt at the site root. Sends every URL in the built sitemap; IndexNow ignores unchanged pages."""
import json, re, sys, urllib.request
from pathlib import Path

KEY = "316433b063da86628eea6ac290ebe7f0"
HOST = "schivinski.github.io"
sitemap = Path(__file__).resolve().parent.parent / "_site" / "sitemap.xml"
urls = re.findall(r"<loc>(.*?)</loc>", sitemap.read_text()) if sitemap.exists() else []
if not urls:
    print("no sitemap URLs; nothing sent"); sys.exit(0)
body = json.dumps({"host": HOST, "key": KEY, "keyLocation": f"https://{HOST}/{KEY}.txt", "urlList": urls[:10000]}).encode()
req = urllib.request.Request("https://api.indexnow.org/indexnow", data=body,
                             headers={"Content-Type": "application/json; charset=utf-8"})
try:
    with urllib.request.urlopen(req, timeout=60) as r:
        print("IndexNow:", r.status, len(urls), "URLs")
except Exception as e:
    print("IndexNow failed (non-fatal):", e)
