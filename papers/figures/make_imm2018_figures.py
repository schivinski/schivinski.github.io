"""Figure for Nunan, Sibai, Schivinski & Christodoulides (2018), Industrial Marketing Management 75, 31-36.

A map of the article's argument: the five streams of research on social media in B2B sales (Section 3), with
Agnihotri et al. (2016) placed in stream 4, and the five themes of the research agenda (Section 4).
The article has no figures; this diagram summarises its structure.
"""
from pathlib import Path

INK, MUTED, AMBER, AMBER_BG, RULE = "#15203b", "#5b6476", "#e0a12a", "#fdf3df", "#dde1e8"
W, H = 760, 440

STREAMS = ["The value social media creates", "Practices that create value", "Drivers of adoption by salespeople",
           "Why social media creates value", "Conditions that enable value"]
THEMES = ["Patterns of social media adoption", "Role of platforms in the sales process",
          "B2B customer engagement", "Modelling the ROI of social media",
          "Risks of social media in B2B sales"]


def col(x, title, items, hl=None, w=330):
    out = [f'<text x="{x}" y="34" font-size="15" font-weight="600" fill="{INK}">{title}</text>']
    for i, t in enumerate(items):
        y = 54 + i * 76
        on = hl == i
        out.append(f'<rect x="{x}" y="{y}" width="{w}" height="60" rx="8" fill="{AMBER_BG if on else "#ffffff"}" '
                   f'stroke="{AMBER if on else INK}" stroke-width="1.6"/>')
        out.append(f'<circle cx="{x + 28}" cy="{y + 30}" r="14" fill="{AMBER if on else INK}"/>'
                   f'<text x="{x + 28}" y="{y + 30}" font-size="14" font-weight="600" fill="{INK if on else "#ffffff"}" '
                   f'text-anchor="middle" dominant-baseline="central">{i + 1}</text>')
        ty = y + 30 if not on else y + 22
        out.append(f'<text x="{x + 54}" y="{ty}" font-size="14.5" fill="{INK}" dominant-baseline="central">{t}</text>')
        if on:
            out.append(f'<text x="{x + 54}" y="{y + 42}" font-size="12.5" font-style="italic" fill="{MUTED}" '
                       f'dominant-baseline="central">Agnihotri et al. (2016) sit here</text>')
    return "".join(out)


body = col(10, "What research has covered (Section 3)", STREAMS, hl=3)
body += col(420, "Research agenda (Section 4)", THEMES)
body += (f'<line x1="350" y1="235" x2="408" y2="235" stroke="{INK}" stroke-width="1.8"/>'
         f'<polygon points="414,235 403,229.5 403,240.5" fill="{INK}"/>')
svg = (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
       f'aria-label="Five streams of research on social media in B2B sales and five themes for future research" '
       f'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif">{body}</svg>\n')
here = Path(__file__).parent
(here / "nunan-et-al-2018-research-agenda.svg").write_text(svg)
print("written")
