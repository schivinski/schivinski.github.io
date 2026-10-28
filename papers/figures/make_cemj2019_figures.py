"""Figures for Brzozowska-Woś & Schivinski (2019, Central European Management Journal 27(3), 2-27): the conceptual model
(Figure 1) and the same model with the standardised coefficients printed in Table 2."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def arrow(x1, y1, x2, y2, col=INK, w=1.7, dashed=False):
    ang = math.atan2(y2 - y1, x2 - x1)
    s = 9
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    d = ' stroke-dasharray="5 4"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"{d}/><polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} '
            f'{p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>')


def text(x, y, t, size=12.5, col=INK, weight="400", anchor="middle", halo=True):
    h = ' stroke="#ffffff" stroke-width="4" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


def ell(cx, cy, rx, ry, lines, fill="#ffffff"):
    s = f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(text(cx, y0 + i * 17, t, 13.5, weight="600", halo=False) for i, t in enumerate(lines))


def model(estimates: bool) -> str:
    W, H = 960, 520
    src = [("Positive online", "reviews (eWOM)", 150, "#fbf6ec"), ("Negative online", "reviews (eWOM)", 370, "#ffffff")]
    dst = [("Brand awareness", 90), ("Brand associations", 200), ("Perceived quality", 310), ("Brand loyalty", 420)]
    est = {(0, 0): ("H1a: 0.39***", True), (0, 1): ("H2a: 0.47***", True), (0, 2): ("H3a: 0.60***", True),
           (0, 3): ("H4a: 0.61***", True), (1, 0): ("H1b: 0.03 (n.s.)", False), (1, 1): ("H2b: −0.01 (n.s.)", False),
           (1, 2): ("H3b: −0.19***", True), (1, 3): ("H4b: −0.10 (p = .09)", False)}
    o = []
    SX, DX = 150 + 110, 760 - 115
    for i, (_, _, sy, _) in enumerate(src):
        for j, (_, dy) in enumerate(dst):
            lab, sig = est[(i, j)]
            col = INK if (sig or not estimates) else GREY
            y1 = sy + (j - 1.5) * 12
            o.append(arrow(SX, y1, DX, dy, col, 1.6, estimates and not sig))
            f = 0.30 if i == 0 else 0.62
            lx, ly = SX + (DX - SX) * f, y1 + (dy - y1) * f
            o.append(text(lx, ly, lab if estimates else lab.split(":")[0], 12, ACC if i == 0 and estimates else
                          (INK if sig or not estimates else MUTED), "600" if sig and estimates else "400"))
    for a, b, y, fill in src:
        o.append(ell(150, y, 110, 46, [a, b], fill))
    for a, y in dst:
        o.append(ell(760, y, 115, 32, [a]))
    o.append(text(150, 40, "Online reviews (eWOM)", 13, MUTED, "600", halo=False))
    o.append(text(760, 30, "Consumer-based brand equity", 13, MUTED, "600", halo=False))
    if estimates:
        o.append(text(20, H - 16, "Standardised coefficients (Table 2 of the article); *** p ≤ .001 as printed; grey dashed "
                      "paths not significant at p &lt; .05; n = 777.", 12, MUTED, anchor="start", halo=False))
    aria = ("Model: positive and negative online reviews predict brand awareness, brand associations, perceived quality "
            "and brand loyalty")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "brzozowska-wos-schivinski-2019-ewom-cbbe-model.svg").write_text(model(False))
(here / "brzozowska-wos-schivinski-2019-ewom-cbbe-estimates.svg").write_text(model(True))
print("written")
