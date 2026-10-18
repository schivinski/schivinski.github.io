"""Quarto post-render step: link the Marketing in 3 RSS feed to watch/feed.xsl.

Feed readers ignore the stylesheet; browsers use it to show a readable page with subscribe instructions
instead of raw XML. Safe to run when the feed was not rendered (partial renders)."""
import os
import re
from pathlib import Path

out = Path(os.environ.get("QUARTO_PROJECT_OUTPUT_DIR", "_site"))
PI = '<?xml-stylesheet type="text/xsl" href="feed.xsl"?>'
for name in ("index.xml", "index-full.xml"):
    f = out / "watch" / name
    if not f.exists():
        continue
    s = f.read_text(encoding="utf-8")
    # Keep the feed body clean for readers: no site-only coffee prompt, no build comments, and no <source srcset>
    # with relative paths (the <img> inside <picture> already has an absolute URL).
    s = re.sub(r'<div class="mw-coffee".*?</a></div>', "", s, flags=re.S)
    s = re.sub(r"<!-- GENERATED from .*? -->\s*", "", s, flags=re.S)
    s = re.sub(r"<source [^>]*srcset=[^>]*>", "", s)
    if PI in s:
        f.write_text(s, encoding="utf-8")
        continue
    head, sep, rest = s.partition("?>")
    if head.lstrip().startswith("<?xml") and sep:
        s = head + sep + "\n" + PI + rest
    else:
        s = PI + "\n" + s
    f.write_text(s, encoding="utf-8")
    print(f"style_feed: linked {f} to feed.xsl")
