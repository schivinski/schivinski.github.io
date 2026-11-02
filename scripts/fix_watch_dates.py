"""Post-render: give each Marketing in 3 issue its 'week of' date in the sitemap.

Quarto stamps <lastmod> with the source file's modification time. Issues are dated by week_of, so the
sitemap should carry that date, not the build date.
"""
import pathlib
import re

import yaml

ROOT = pathlib.Path(__file__).resolve().parent.parent
SITEMAP = ROOT / "_site" / "sitemap.xml"


def main() -> None:
    if not SITEMAP.exists():
        return
    weeks = {}
    for f in (ROOT / "watch" / "issues").glob("*.yml"):
        d = yaml.safe_load(f.read_text())
        # look-back issues (series: 2025, 2024, ...) carry the paper's date in week_of; the sitemap gets the real page date
        day = d.get("published") or d["week_of"] if d.get("series") else d["week_of"]
        weeks[d["slug"]] = f'{day}T00:00:00.000Z'
    xml = SITEMAP.read_text()

    def fix(m: re.Match) -> str:
        slug = m.group(2)
        return m.group(1) + weeks[slug] + m.group(3) if slug in weeks else m.group(0)

    xml = re.sub(r"(<loc>[^<]*/watch/posts/([^/<]+)/index\.html</loc>\s*<lastmod>)[^<]*(</lastmod>)", fix, xml)
    # Every page declares a canonical without "index.html", so the sitemap has to agree. A <loc> whose
    # canonical points somewhere else is treated as a duplicate and can be dropped from the index.
    xml = re.sub(r"(<loc>[^<]*/)index\.html(</loc>)", r"\1\2", xml)
    SITEMAP.write_text(xml)


if __name__ == "__main__":
    main()
