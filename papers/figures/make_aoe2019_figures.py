"""Figures for Brzozowska-Woś & Schivinski (2019, Argumenta Oeconomica 2(43), 213-231): the conceptual framework
(Figure 1) and the same model with the standardised coefficients printed in Table 2 (Figure 2). The four control
variables, drawn as separate boxes in the article, are grouped in one box here."""
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
    W, H = 960, 600 if estimates else 460
    src = [("Informational", "influence", 170, "#fbf6ec"), ("Normative", "influence", 330, "#ffffff")]
    dst = [("Consuming", "COBRA type", 100), ("Contributing", "COBRA type", 250), ("Creating", "COBRA type", 400)]
    est = {(0, 0): ("H1a: 0.39", True), (0, 1): ("H1b: 0.32", True), (0, 2): ("H1c: 0.40", True),
           (1, 0): ("H2a: 0.08 (n.s.)", False), (1, 1): ("H2b: 0.05 (n.s.)", False),
           (1, 2): ("H2c: −0.06 (n.s.)", False)}
    o = [f'<rect x="28" y="52" width="282" height="380" fill="none" stroke="{MUTED}" stroke-width="1.4" '
         f'stroke-dasharray="6 5"/>',
         text(169, 76, "Interpersonal influences (SUSCEP)", 13, MUTED, "600", halo=False)]
    SX, DX = 180 + 108, 600 - 108
    for i, (_, _, sy, _) in enumerate(src):
        for j, (_, _, dy) in enumerate(dst):
            lab, sig = est[(i, j)]
            col = INK if (sig or not estimates) else GREY
            y1 = sy + (j - 1) * 14
            dy2 = dy - 10 if i == 0 else dy + 10
            o.append(arrow(SX, y1, DX, dy2, col, 1.7, estimates and not sig))
            f = 0.27
            lx, ly = SX + (DX - SX) * f + 26, y1 + (dy2 - y1) * f
            o.append(text(lx, ly, lab if estimates else lab.split(":")[0], 12, ACC if sig and estimates else
                          (INK if not estimates else MUTED), "600" if sig and estimates else "400"))
    # control variables
    BX, BY, BW, BH = 785, 195, 160, 110
    for j, (_, _, dy) in enumerate(dst):
        o.append(arrow(BX, BY + 30 + j * 25, 600 + 108, dy, INK, 1.3))
    o.append(f'<rect x="{BX}" y="{BY}" width="{BW}" height="{BH}" rx="3" fill="#ffffff" stroke="{INK}" '
             f'stroke-width="1.4"/>')
    for k, t in enumerate(["Control variables", "age, gender,", "social media usage,", "brand usage"]):
        o.append(text(BX + BW / 2, BY + 22 + k * 22, t, 13 if k == 0 else 12.5, INK, "600" if k == 0 else "400",
                      halo=False))
    for a, b, y, fill in src:
        o.append(ell(180, y, 108, 44, [a, b], fill))
    for a, b, y in dst:
        o.append(ell(600, y, 108, 40, [a, b]))
    if estimates:
        rows = [("Age", ["−0.02", "0.12", "0.10"], [False, True, True]),
                ("Gender", ["−0.03", "0.08", "0.07"], [False, False, True]),
                ("Social media usage", ["0.20", "0.18", "0.14"], [True, True, True]),
                ("Brand usage", ["0.05", "0.10", "0.06"], [True, True, True])]
        x0, y0 = 520, 470
        o.append(text(x0, y0, "Controls", 12, MUTED, "600", "start", False))
        for c, h in enumerate(["Consuming", "Contributing", "Creating"]):
            o.append(text(x0 + 200 + c * 95, y0, h, 12, MUTED, "600", halo=False))
        o.append(f'<line x1="{x0}" y1="{y0 + 11}" x2="{x0 + 430}" y2="{y0 + 11}" stroke="{GREY}"/>')
        for r, (name, vals, sig) in enumerate(rows):
            yy = y0 + 26 + r * 18
            o.append(text(x0, yy, name, 12, INK, "400", "start", False))
            for c, v in enumerate(vals):
                o.append(text(x0 + 200 + c * 95, yy, v if sig[c] else f"{v} (n.s.)", 12, INK if sig[c] else MUTED,
                              "400", halo=False))
        o.append(text(20, H - 16, "Standardised coefficients (Table 2 of the article); grey dashed paths and grey "
                      "values not significant as printed (p &gt; .05); n = 911.", 12, MUTED, anchor="start",
                      halo=False))
    aria = ("Model: informational and normative interpersonal influence predict the consuming, contributing and "
            "creating types of consumers' online brand-related activities, controlling for age, gender, social media "
            "usage and brand usage")
    if estimates:
        aria += "; only informational influence has significant effects"
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "brzozowska-wos-schivinski-2019-suscep-cobras-model.svg").write_text(model(False))
(here / "brzozowska-wos-schivinski-2019-suscep-cobras-estimates.svg").write_text(model(True))
print("written")
