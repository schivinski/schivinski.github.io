"""Quarto post-render step: add PNG favicons, the Apple touch icon and the theme colour to every page.

Quarto's `favicon:` only adds the SVG icon, and pages with their own include-in-header replace the site-wide one,
so the extra icon links are inserted here, after rendering, into every HTML file."""
import os
from pathlib import Path

out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
TAGS = ('<link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon-32.png">'
        '<link rel="icon" type="image/png" sizes="192x192" href="/assets/favicon-192.png">'
        '<link rel="apple-touch-icon" href="/assets/apple-touch-icon.png">'
        '<meta name="theme-color" content="#15203b">')
n = 0
for f in out.rglob("*.html"):
    s = f.read_text(encoding="utf-8")
    if "apple-touch-icon" in s or "</head>" not in s:
        continue
    f.write_text(s.replace("</head>", TAGS + "\n</head>", 1), encoding="utf-8")
    n += 1
print(f"add_icons: {n} page(s)")
