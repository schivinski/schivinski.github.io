"""Figure for Schivinski & Łukasik (2015, e-mentor 5(62), 77-83, in Polish): the structural model of the effect of
consumer's online brand-related activities (COBRA, second-order factor of consumption, contribution and creation) on
the three consumer-based brand equity dimensions, with the standardised path estimates of Table 2. Labels translated
from Polish."""
import math
from pathlib import Path

INK, MUTED, ACC = "#15203b", "#5b6476", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x, y, ang, col=INK):
    s = 9
    p1 = (x - s * math.cos(ang - 0.38), y - s * math.sin(ang - 0.38))
    p2 = (x - s * math.cos(ang + 0.38), y - s * math.sin(ang + 0.38))
    return f'<polygon points="{x:.1f},{y:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, col=INK, w=1.6):
    ang = math.atan2(y2 - y1, x2 - x1)
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"/>' + head(x2, y2, ang, col))


def text(x, y, t, size=13, col=INK, weight="400", anchor="middle", halo=False):
    h = ' stroke="#ffffff" stroke-width="5" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


def ell(cx, cy, rx, ry, lines, fill="#ffffff", size=13.5):
    s = f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(text(cx, y0 + i * 17, t, size, weight="600") for i, t in enumerate(lines))


def svg() -> str:
    W, H = 960, 440
    o = []
    cx, cy = 400, 200
    firsts = [("Consumption", 70), ("Contribution", 200), ("Creation", 330)]
    for lab, y in firsts:
        o.append(arrow(cx - 92, cy + (y - cy) * 0.12, 205, y))
        o.append(ell(130, y, 78, 34, [lab]))
    o.append(ell(cx, cy, 92, 46, ["COBRA", "(second order)"], "#fbf6ec"))
    outs = [("H1", "0.27", 70, ["Brand awareness /", "associations"]), ("H2", "0.42", 200, ["Brand loyalty"]),
            ("H3", "0.18", 330, ["Perceived quality"])]
    for h, b, y, lines in outs:
        o.append(arrow(cx + 92, cy + (y - cy) * 0.15, 712, y))
        mx, my = (cx + 92 + 712) / 2, (cy + (y - cy) * 0.15 + y) / 2
        o.append(text(mx, my - 12, f"{h}: β = {b}***", 13.5, ACC, "600", halo=True))
        o.append(ell(810, y, 100, 38, lines, "#ffffff"))
    o.append(text(810, 18, "Consumer-based brand equity", 13, MUTED, "600"))
    o.append(text(130, 18, "First-order COBRA types", 13, MUTED, "600"))
    o.append(text(20, H - 40, "Standardised path estimates from Table 2 of the article; *** p &lt; .001. "
                  "N = 766 Polish social media users; Mplus 7.2, MLM estimator.", 12, MUTED, anchor="start"))
    o.append(text(20, H - 20, "Model fit: MLMχ²(482) = 1429.06, CFI = 0.93, TLI = 0.93, RMSEA = 0.05, SRMR = 0.06 "
                  "(as printed). Labels translated from Polish.", 12, MUTED, anchor="start"))
    aria = ("Structural model: COBRA, a second-order factor of consumption, contribution and creation, positively "
            "affects brand awareness/associations (beta 0.27), brand loyalty (0.42) and perceived quality (0.18), "
            "all p below .001")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("schivinski-lukasik-2015-cobra-cbbe-model.svg").write_text(svg())
print("written")
