"""Draw Figure 1 of Schivinski (2021, Journal of Business Research 130, 594-602) as SVG.

Conditional inference tree predicting brand-related social media engagement (COBRAs) from brand equity items.
Splits and thresholds from Figure 1 and Section 4.5; terminal-node percentages from Table 2 of the article.
"""
from pathlib import Path

INK, MUTED, GREY, AMBER, SLATE, LIGHT = "#15203b", "#5b6476", "#9aa3b5", "#e0a12a", "#8b96ad", "#d6dbe5"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
OUT = Path(__file__).resolve().parent / "schivinski-2021-ctree.svg"

W, H = 1180, 760
parts = [f'<rect width="{W}" height="{H}" fill="#ffffff"/>']


def text(x, y, s, size=13, col=INK, anchor="middle", weight=None, italic=False):
    wt = f' font-weight="{weight}"' if weight else ""
    it = ' font-style="italic"' if italic else ""
    parts.append(f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}"{wt}{it} fill="{col}" text-anchor="{anchor}">{s}</text>')


def line(x1, y1, x2, y2, col=INK, w=1.6):
    parts.append(f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" stroke="{col}" stroke-width="{w}"/>')


def split(cx, cy, node, title, item, w=210):
    parts.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{w/2}" ry="34" fill="#f4f6fa" stroke="{INK}" stroke-width="1.6"/>')
    text(cx, cy - 8, f"{node}. {title}", 14, weight="600")
    text(cx, cy + 12, item, 11.5, MUTED)


def edge(x1, y1, x2, y2, label):
    line(x1, y1, x2, y2)
    mx, my = (x1 + x2) / 2, (y1 + y2) / 2
    parts.append(f'<rect x="{mx-24:.1f}" y="{my-11:.1f}" width="48" height="20" rx="4" fill="#ffffff"/>')
    text(mx, my + 4, label, 13, weight="600")


def leaf(x, y, node, rule, name, n, data, hl=False):
    """data = [(low, medium, high) for consumption, contribution, creation], in %."""
    bw, bh = 214, 250
    stroke = AMBER if hl else INK
    parts.append(f'<rect x="{x}" y="{y}" width="{bw}" height="{bh}" rx="8" fill="#ffffff" stroke="{stroke}" stroke-width="{2.2 if hl else 1.4}"/>')
    text(x + bw / 2, y + 22, f"Node {node} · Rule {rule}", 12, MUTED)
    text(x + bw / 2, y + 42, name, 15, weight="600")
    text(x + bw / 2, y + 60, f"n = {n}", 12, MUTED)
    top, gh = y + 78, 150
    for gi, (lab, vals) in enumerate(zip(["Consumption", "Contribution", "Creation"], data)):
        gx = x + 14 + gi * 66
        line(gx, top + gh, gx + 58, top + gh, GREY, 1)
        for bi, v in enumerate(vals):
            bx = gx + 3 + bi * 18
            h = gh * v / 100
            fill = [LIGHT, SLATE, INK][bi]
            parts.append(f'<rect x="{bx:.1f}" y="{top + gh - h:.1f}" width="15" height="{max(h, 0.8):.1f}" fill="{fill}"/>')
        text(gx + 29, top + gh + 16, lab, 10.5, MUTED)


# Root and inner splits (thresholds on 1-7 agreement items)
split(590, 60, 1, "Brand commitment", "[BL3] I am committed to this brand")
split(330, 200, 2, "Brand recognition", "[BAW3] I can recognize this brand…", 220)
split(860, 200, 7, "Brand familiarity", "[BAW2] I am quite familiar with this brand", 250)
split(440, 340, 4, "Favourable associations", "[BAS2] This brand has favorable associations", 270)

edge(530, 88, 380, 172, "≤ 4")
edge(650, 88, 810, 172, "> 4")
edge(280, 228, 127, 430, "≤ 4")
edge(380, 228, 420, 306, "> 4")
edge(390, 372, 356, 430, "≤ 3")
edge(500, 368, 585, 430, "> 3")
edge(820, 230, 814, 430, "≤ 4")
edge(920, 225, 1043, 430, "> 4")

Y = 430
leaf(20, Y, 3, 4, "Brand curious", 41, [(8.33, 91.67, 0), (6.66, 93.34, 0), (33.32, 33.33, 33.34)])
leaf(249, Y, 5, 3, "Low engaged", 108, [(27.98, 71.02, 1), (42.59, 56.11, 1.3), (65.9, 34.09, 0)])
leaf(478, Y, 6, 1, "Brand passionate", 625, [(11.60, 87.15, 1.25), (15, 82.44, 2.56), (54.13, 43.33, 2.54)], hl=True)
leaf(707, Y, 8, 5, "Prospect brand fan", 24, [(17.56, 82.44, 0), (16.9, 66.66, 16.44), (50, 16, 34)])
leaf(936, Y, 9, 2, "Brand fan", 558, [(5.44, 83.46, 11.10), (5.54, 73.22, 21.17), (28.52, 53.52, 17.96)], hl=True)

# legend
lx, ly = 20, 712
for i, (lab, col) in enumerate([("Low", LIGHT), ("Medium", SLATE), ("High", INK)]):
    parts.append(f'<rect x="{lx + i*170}" y="{ly}" width="14" height="14" fill="{col}"/>')
    text(lx + i * 170 + 20, ly + 12, f"{lab} engagement", 12, MUTED, anchor="start")
text(W - 20, ly + 12, "Bars show the share of each node at each level (0–100%). Scales 1–7.", 12, MUTED, anchor="end")

svg = (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
       f'aria-label="Conditional inference tree: brand equity items predicting consumption, contribution and creation of brand content" '
       f'font-family="{FONT}">' + "".join(parts) + "</svg>")
OUT.write_text(svg, encoding="utf-8")
print("wrote", OUT)
