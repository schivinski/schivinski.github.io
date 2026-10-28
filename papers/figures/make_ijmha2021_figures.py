"""Figures for Rozgonjuk, Schivinski, Pontes & Montag (2023/online 2021, International Journal of Mental Health and
Addiction 21, 240-257).
* a map of the five problematic online behaviours (each formed its own EGA dimension, Table 2), joined by their
  Spearman correlations (Table 1); not a redraw of the published item-level network (Fig. 1);
* Fig. 2 redrawn: scale means with 95% confidence intervals, computed from Table 1 (M, SD, N = 4,416)."""
import math
from pathlib import Path

INK, MUTED, ACC, GRID = "#15203b", "#5b6476", "#8a5a00", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
N = 4416
SCALES = [("Gaming", 10.77, 3.76, "#7fc97f"), ("Gambling", 7.45, 3.74, "#beaed4"), ("Shopping", 5.77, 2.64, "#fdc086"),
          ("Pornography", 6.91, 3.30, "#ffff99"), ("Social networking", 8.00, 3.59, "#a6cee3")]
R = {(0, 1): 0.299, (0, 2): 0.269, (0, 3): 0.318, (0, 4): 0.389, (1, 2): 0.231, (1, 3): 0.193, (1, 4): 0.226,
     (2, 3): 0.317, (2, 4): 0.358, (3, 4): 0.333}
LOAD = {0: [0.312, 0.306, 0.317, 0.253], 1: [0.446, 0.432, 0.256, 0.395], 2: [0.390, 0.431, 0.313, 0.383],
        3: [0.368, 0.448, 0.340, 0.374], 4: [0.423, 0.381, 0.357, 0.270]}


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def network() -> str:
    W, H = 960, 640
    cx, cy, rad = 480, 330, 230
    pos = [(cx + rad * math.cos(math.radians(-90 + k * 72)), cy + rad * math.sin(math.radians(-90 + k * 72))) for k in range(5)]
    o = []
    for (a, b), r in sorted(R.items(), key=lambda z: z[1]):
        (x1, y1), (x2, y2) = pos[a], pos[b]
        w = 1 + (r - 0.18) * 40
        o.append(f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" stroke="#2f3fa8" stroke-opacity="{0.25 + (r - 0.18) * 2.5:.2f}" stroke-width="{w:.1f}"/>')
        mx, my = 0.5 * x1 + 0.5 * x2, 0.5 * y1 + 0.5 * y2
        if (a, b) in ((0, 2), (0, 3), (1, 3), (1, 4), (2, 4)):  # inner diagonals: label off-centre
            mx, my = 0.62 * x1 + 0.38 * x2, 0.62 * y1 + 0.38 * y2
        o.append(f'<text x="{mx:.1f}" y="{my:.1f}" font-size="12.5" fill="{INK}" text-anchor="middle" dominant-baseline="middle" '
                 f'stroke="#ffffff" stroke-width="4" paint-order="stroke">{r:.3f}</text>')
    for k, ((name, m, sd, col), (x, y)) in enumerate(zip(SCALES, pos)):
        o.append(f'<circle cx="{x:.1f}" cy="{y:.1f}" r="70" fill="{col}" stroke="{INK}" stroke-width="1.6"/>')
        o.append(t(x, y - 12, name, 13, weight="600"))
        o.append(t(x, y + 8, f"M = {m:.2f}", 12))
        o.append(t(x, y + 25, "loadings " + f"{min(LOAD[k]):.2f}–{max(LOAD[k]):.2f}", 10.5, MUTED))
    o.append(t(W / 2, H - 16, "Line thickness and labels: Spearman correlations between summed scale scores (all p &lt; .001; N = 4,416)", 12.5, MUTED))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Five problematic '
            f'online behaviours among gamers, each a separate dimension, linked by small to medium correlations; '
            f'gaming and social networking are most strongly linked" font-family="{FONT}"><rect width="{W}" '
            f'height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


def means() -> str:
    W, H = 900, 400
    x0, y0, pw = 280, 30, 540
    lo, hi = 5, 11
    X = lambda v: x0 + (v - lo) / (hi - lo) * pw
    order = sorted(SCALES, key=lambda s: -s[1])
    o = []
    for v in range(lo, hi + 1):
        o.append(f'<line x1="{X(v):.1f}" y1="{y0}" x2="{X(v):.1f}" y2="{y0 + 300}" stroke="{GRID}"/>')
        o.append(t(X(v), y0 + 318, str(v), 12.5, MUTED))
    for i, (name, m, sd, col) in enumerate(order):
        y = y0 + 30 + i * 60
        ci = 1.96 * sd / math.sqrt(N)
        c = ACC if name == "Gaming" else INK
        o.append(t(x0 - 16, y, f"Problematic online {name.lower()}", 13.5, INK, "end"))
        o.append(f'<line x1="{X(m - ci):.1f}" y1="{y}" x2="{X(m + ci):.1f}" y2="{y}" stroke="{c}" stroke-width="2"/>')
        for e in (m - ci, m + ci):
            o.append(f'<line x1="{X(e):.1f}" y1="{y - 9}" x2="{X(e):.1f}" y2="{y + 9}" stroke="{c}" stroke-width="2"/>')
        o.append(f'<circle cx="{X(m):.1f}" cy="{y}" r="5.5" fill="{c}"/>')
        o.append(t(X(m + ci) + 12, y, f"{m:.2f}", 12.5, MUTED, "start"))
    o.append(t(x0 + pw / 2, y0 + 352, "Mean scale score (4 to 20) with 95% confidence interval", 13.5, MUTED))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Problematic online '
            f'gaming scored highest, followed by social networking, gambling, pornography and shopping" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "rozgonjuk-et-al-2021-problematic-behaviours-map.svg").write_text(network())
(here / "rozgonjuk-et-al-2021-problematic-behaviours-means.svg").write_text(means())
print("written")
