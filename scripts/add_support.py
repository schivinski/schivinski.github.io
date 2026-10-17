"""Post-render: add a "Buy me a pint" link to the site footer, next to "Subscribe to Marketing in 3".

Reads watch/support.yml and does nothing while its `url` is empty, so the footer only changes once the Ko-fi
page exists. The link opens Ko-fi in a new tab and is counted in GoatCounter as `support`."""
import html
import os
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", ROOT / "_site"))
cfg = yaml.safe_load((ROOT / "watch" / "support.yml").read_text(encoding="utf-8")) or {}
url = cfg.get("url") or ""
if url:
    item = (f'<li class="nav-item mw-footer-support"><a class="nav-link" href="{html.escape(url)}" target="_blank" '
            f'rel="noopener"><p>{html.escape(cfg.get("button", "Buy me a pint"))}</p></a></li>')
    marker = '<div class="nav-footer-right">\n      <ul class="footer-items list-unstyled">'
    n = 0
    for f in out.rglob("*.html"):
        s = f.read_text(encoding="utf-8")
        if marker in s and "mw-footer-support" not in s:
            f.write_text(s.replace(marker, marker + "\n" + item, 1), encoding="utf-8")
            n += 1
    print(f"add_support: footer link on {n} page(s)")
