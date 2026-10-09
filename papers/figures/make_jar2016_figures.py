"""Figures 1 and 2 of Schivinski, Christodoulides & Dabrowski (2016), Journal of Advertising Research.

Labels, loadings and correlations are reproduced exactly as printed in the published figures.
"""
from pathlib import Path

INK, MUTED, RULE, AMBER = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = 'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif"'

FACTORS = [
    ("CONSUMPTION", [("CONS1", "I read posts related to Brand X on social media", "0.82*"),
                     ("CONS2", "I read fanpage(s) related to Brand X on social network sites", "0.84"),
                     ("CONS3", "I watch pictures/graphics related to Brand X", "0.65"),
                     ("CONS4", "I follow blogs related to Brand X", "0.63"),
                     ("CONS5", "I follow Brand X on social network sites", "0.86")]),
    ("CONTRIBUTION", [("CONTR1", "I comment on videos related to Brand X", "0.84*"),
                      ("CONTR2", "I comment on posts related to Brand X", "0.89"),
                      ("CONTR3", "I comment on pictures/graphics related to Brand X", "0.86"),
                      ("CONTR4", "I share Brand X related posts", "0.88"),
                      ("CONTR5", "I “Like” pictures/graphics related to Brand X", "0.63"),
                      ("CONTR6", "I “Like” posts related to Brand X", "0.66")]),
    ("CREATION", [("CREA1", "I initiate posts related to Brand X", "0.90*"),
                  ("CREA2", "I initiate posts related to Brand X on social network sites", "0.90"),
                  ("CREA3", "I post pictures/graphics related to Brand X", "0.81"),
                  ("CREA4", "I write reviews related to Brand X", "0.85"),
                  ("CREA5", "I write posts related to Brand X on forums", "0.80"),
                  ("CREA6", "I post videos that show Brand X", "0.68")]),
]


def figure1() -> str:
    W, ROW, GAP, TOP = 900, 34, 26, 20
    box_x, box_w = 70, 400
    lat_x = 680
    parts, centres = [], {}
    y = TOP
    n = 0
    for name, items in FACTORS:
        ys = []
        for code, text, load in items:
            n += 1
            cy = y + ROW / 2
            ys.append((cy, load))
            parts.append(f'<circle cx="26" cy="{cy}" r="14" fill="#fff" stroke="{INK}" stroke-width="1.2"/>'
                         f'<text x="26" y="{cy + 4}" font-size="11" text-anchor="middle" fill="{INK}">e{n}</text>'
                         f'<line x1="40" y1="{cy}" x2="{box_x - 4}" y2="{cy}" stroke="{INK}" stroke-width="1.1"/>'
                         f'<polygon points="{box_x},{cy} {box_x - 8},{cy - 4} {box_x - 8},{cy + 4}" fill="{INK}"/>'
                         f'<text x="50" y="{cy - 5}" font-size="9" fill="{MUTED}" text-anchor="middle">1</text>'
                         f'<rect x="{box_x}" y="{y + 3}" width="{box_w}" height="{ROW - 6}" fill="#fff" stroke="{INK}" stroke-width="1.1"/>'
                         f'<text x="{box_x + 8}" y="{cy + 4}" font-size="11.5" fill="{INK}"><tspan font-weight="600">{code}:</tspan> {text}</text>')
            y += ROW
        lat_y = (ys[0][0] + ys[-1][0]) / 2
        centres[name] = lat_y
        parts.append(f'<ellipse cx="{lat_x}" cy="{lat_y}" rx="88" ry="34" fill="#fff" stroke="{INK}" stroke-width="1.5"/>'
                     f'<text x="{lat_x}" y="{lat_y + 4}" font-size="12.5" font-weight="600" text-anchor="middle" fill="{INK}">{name}</text>')
        for cy, load in ys:
            x1, y1 = lat_x - 88, lat_y
            x2, y2 = box_x + box_w + 2, cy
            parts.append(f'<line x1="{x1}" y1="{y1}" x2="{x2 + 1}" y2="{y2}" stroke="{INK}" stroke-width="1.1" marker-end="url(#ah)"/>')
            lx, ly = x2 + (x1 - x2) * 0.28, y2 + (y1 - y2) * 0.28 - 5
            parts.append(f'<text x="{lx:.0f}" y="{ly:.0f}" font-size="11" font-style="italic" fill="{INK}" text-anchor="middle">{load}</text>')
        y += GAP
    # correlations between factors
    c1, c2, c3 = centres["CONSUMPTION"], centres["CONTRIBUTION"], centres["CREATION"]
    ex = lat_x + 88

    def arc(ya, yb, bulge, label):
        mid = (ya + yb) / 2
        return (f'<path d="M {ex - 6} {ya + 26} Q {ex + bulge} {mid} {ex - 6} {yb - 26}" fill="none" stroke="{INK}" stroke-width="1.2" '
                f'marker-start="url(#ah)" marker-end="url(#ah)"/>'
                f'<rect x="{ex + bulge * 0.5 - 15:.0f}" y="{mid - 9:.0f}" width="30" height="16" fill="#fff"/>'
                f'<text x="{ex + bulge * 0.5:.0f}" y="{mid + 4:.0f}" font-size="11.5" fill="{INK}" text-anchor="middle">{label}</text>')
    parts.append(arc(c1, c2, 70, "0.65"))
    parts.append(arc(c2, c3, 70, "0.77"))
    parts.append(arc(c1, c3, 150, "0.51"))
    H = y + 4
    defs = (f'<defs><marker id="ah" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">'
            f'<path d="M0,0 L10,5 L0,10 z" fill="{INK}"/></marker></defs>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Confirmatory factor analysis of the three-factor CEBSC framework" {FONT}>{defs}{"".join(parts)}</svg>\n')


def _angle(x1, y1, x2, y2):
    import math
    return math.degrees(math.atan2(y1 - y2, x1 - x2))


def figure2() -> str:
    W, H = 720, 110
    nodes = [("CONSUMPTION", 110), ("CONTRIBUTION", 360), ("CREATION", 610)]
    parts = []
    for name, cx in nodes:
        parts.append(f'<ellipse cx="{cx}" cy="55" rx="92" ry="34" fill="#fff" stroke="{INK}" stroke-width="1.5"/>'
                     f'<text x="{cx}" y="60" font-size="14" font-weight="600" text-anchor="middle" fill="{INK}">{name}</text>')
    for (a, xa), (b, xb), lab in [(nodes[0], nodes[1], "0.61 (0.02)"), (nodes[1], nodes[2], "0.81 (0.02)")]:
        x1, x2 = xa + 92, xb - 92
        parts.append(f'<line x1="{x1}" y1="55" x2="{x2 - 9}" y2="55" stroke="{INK}" stroke-width="1.6"/>'
                     f'<polygon points="{x2},55 {x2 - 11},50 {x2 - 11},60" fill="{INK}"/>'
                     f'<text x="{(x1 + x2) / 2:.0f}" y="45" font-size="13" text-anchor="middle" fill="{INK}">{lab}</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Hierarchical model: consumption to contribution to creation" {FONT}>{"".join(parts)}</svg>\n')


here = Path(__file__).parent
(here / "schivinski-christodoulides-dabrowski-2016-cfa.svg").write_text(figure1())
(here / "schivinski-christodoulides-dabrowski-2016-hierarchy.svg").write_text(figure2())
print("written")
