#!/usr/bin/env python3
"""Post-render: point internal links at the clean URL, not at .../index.html (Bruno, 2 November 2026).

Quarto links the home page, the Marketing in 3 hub and issue pages as ./index.html, ../index.html and so on, so every page
has two live addresses (/ and /index.html). The sitemap and canonical tags use the clean form (/ and /watch/posts/x/), so the
internal links must too: one address per page keeps link signals together for Google and for AI crawlers.
Only <a href> values are changed; canonical, og:url, feeds and external links are left alone.
"""
import os, re
from pathlib import Path
from urllib.parse import urlparse, urljoin

SITE = "https://schivinski.com"
SITE_HOSTS = {"schivinski.com", "www.schivinski.com"}
OUT = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
A_HREF = re.compile(r'(<a\b[^>]*?\shref\s*=\s*)(["\'])(.*?)\2', re.I | re.S)


def clean(href: str, page_url: str) -> str:
    if href.startswith(("#", "mailto:", "tel:", "javascript:")):
        return href
    u = urlparse(urljoin(page_url, href))
    if (u.hostname or "").lower() not in SITE_HOSTS or not u.path.endswith("index.html"):
        return href
    path = u.path[: -len("index.html")]
    return path + (f"?{u.query}" if u.query else "") + (f"#{u.fragment}" if u.fragment else "")


def main() -> None:
    changed = 0
    for f in OUT.rglob("*.html"):
        rel = f.relative_to(OUT).as_posix()
        page_url = f"{SITE}/{rel}"
        s = f.read_text(encoding="utf-8")
        n = A_HREF.sub(lambda m: f"{m.group(1)}{m.group(2)}{clean(m.group(3), page_url)}{m.group(2)}", s)
        if n != s:
            f.write_text(n, encoding="utf-8")
            changed += 1
    print(f"canonical_links: {changed} pages updated")


if __name__ == "__main__":
    main()
