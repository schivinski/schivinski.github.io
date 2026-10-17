"""Post-render: turn the topic labels on each Marketing in 3 issue into links to that topic's page.

Quarto prints an issue's topics (its `categories`) as plain labels that open the main listing unfiltered.
Here each label becomes a link to watch/topics/<topic>.html, the page listing every issue on that topic,
so readers can follow a topic and keep reading. The class changes from quarto-category to mw-topic-chip so
Quarto's own script leaves the link alone. Topics without a page stay as they are.
"""
import html
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
SITE = ROOT / "_site" / "watch"


def slug(t: str) -> str:
    return re.sub(r"[^a-z0-9]+", "-", t.lower()).strip("-")


def main() -> None:
    topics = {p.stem for p in (SITE / "topics").glob("*.html")}
    if not topics:
        return
    pat = re.compile(r'<div class="quarto-category">([^<]+)</div>')
    for page in (SITE / "posts").glob("*/index.html"):
        src = page.read_text(encoding="utf-8")

        def link(m: re.Match) -> str:
            name = html.unescape(m.group(1)).strip()
            s = slug(name)
            if s not in topics:
                return m.group(0)
            return (f'<a class="mw-topic-chip" href="../../topics/{s}.html" '
                    f'title="All Marketing in 3 issues on {html.escape(name)}">{m.group(1)}</a>')

        out = pat.sub(link, src)
        if out != src:
            page.write_text(out, encoding="utf-8")


if __name__ == "__main__":
    main()
