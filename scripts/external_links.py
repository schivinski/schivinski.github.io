#!/usr/bin/env python3
"""Post-render: make every external link on the site open in a new browser tab (Bruno, 18 October 2026).

Adds target="_blank" and rel="noopener" to <a href="http(s)://..."> pointing anywhere other than this site, so readers
keep the site open in their own tab. Internal links, anchors, mailto: links and links that already set a target are left alone.
"""
import os, re
from pathlib import Path
from urllib.parse import urlparse

SITE_HOSTS = {"schivinski.com", "www.schivinski.com", "schivinski.github.io"}
OUT = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
A_TAG = re.compile(r"<a\b[^>]*>", re.I)
HREF = re.compile(r'\shref\s*=\s*(["\'])(.*?)\1', re.I | re.S)


def external(href: str) -> bool:
    if not re.match(r"https?://", href, re.I):
        return False
    host = (urlparse(href).hostname or "").lower()
    return bool(host) and host not in SITE_HOSTS


def fix(tag: str) -> str:
    m = HREF.search(tag)
    if not m or not external(m.group(2)) or re.search(r"\starget\s*=", tag, re.I):
        return tag
    rel = re.search(r'\srel\s*=\s*(["\'])(.*?)\1', tag, re.I | re.S)
    if rel:
        vals = rel.group(2).split()
        if "noopener" not in vals:
            vals.append("noopener")
        tag = tag[:rel.start()] + f' rel="{" ".join(vals)}"' + tag[rel.end():]
        return tag[:-1].rstrip("/").rstrip() + ' target="_blank">'
    return tag[:-1].rstrip("/").rstrip() + ' target="_blank" rel="noopener">'


def main() -> None:
    changed = 0
    for f in OUT.rglob("*.html"):
        s = f.read_text(encoding="utf-8")
        t = A_TAG.sub(lambda m: fix(m.group(0)), s)
        if t != s:
            f.write_text(t, encoding="utf-8")
            changed += 1
    print(f"external_links: new-tab links set in {changed} pages")


if __name__ == "__main__":
    main()
