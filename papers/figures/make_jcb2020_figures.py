"""Figures for Czarnecka, Schivinski & Keles (2020, Journal of Consumer Behaviour 19(5), 505-522):
the conceptual model (Figure 1, hypothesised signs) and the same model with the estimates printed in Table 3."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=9):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, col=INK, w=1.7, dashed=False):
    ang = math.atan2(y2 - y1, x2 - x1)
    d = ' stroke-dasharray="5 4"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"{d}/>' + head(x2, y2, ang, col))


def text(x, y, t, size=12.5, col=INK, weight="400", anchor="middle", halo=True):
    h = ' stroke="#ffffff" stroke-width="4" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


def ell(cx, cy, rx, ry, lines, fill="#ffffff"):
    s = f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(text(cx, y0 + i * 17, t, 13.5, weight="600", halo=False) for i, t in enumerate(lines))


def model(estimates: bool) -> str:
    W, H = 960, 600
    lefts = [("Vertical", "individualism", 90), ("Horizontal", "individualism", 220),
             ("Vertical", "collectivism", 370), ("Horizontal", "collectivism", 500)]
    est = ["H1: β = 0.44***", "H2: −0.08 (n.s.)", "H3: β = 0.30** (positive)", "H4: −0.26 (p = .07)"]
    hyp = ["H1 (+)", "H2 (+)", "H3 (−)", "H4 (−)"]
    sig = [True, False, True, False]
    AX, AY = 520, 300
    o = []
    for i, (a, b, y) in enumerate(lefts):
        x1, y1 = 100 + 92, y
        x2, y2 = AX - 92, AY + (i - 1.5) * 20
        col = INK if (sig[i] or not estimates) else GREY
        o.append(arrow(x1, y1, x2, y2, col, 1.7, estimates and not sig[i]))
        lx, ly = x1 + (x2 - x1) * 0.45, y1 + (y2 - y1) * 0.45 - 13
        o.append(text(lx, ly, est[i] if estimates else hyp[i], 12.5, INK if (sig[i] or not estimates) else MUTED,
                      "600" if sig[i] and estimates else "400"))
    IX, IY, MX, MY = 830, 170, 830, 430
    o.append(arrow(AX + 92, AY - 30, IX - 100, IY + 30, INK, 1.8))
    o.append(text(712, 214, "H5: β = 0.60***" if estimates else "H5 (+)", 12.5, INK, "600" if estimates else "400"))
    o.append(arrow(AX + 92, AY + 30, MX - 100, MY - 30, INK, 1.8))
    o.append(text(712, 386, "H6: β = −0.48***" if estimates else "H6 (−)", 12.5, INK, "600" if estimates else "400"))
    o.append(f'<rect x="{AX - 70}" y="470" width="140" height="70" rx="3" fill="#ffffff" stroke="{INK}" stroke-width="1.4"/>')
    o.append(text(AX, 488, "Controls:", 12.5, halo=False))
    o.append(text(AX, 506, "age, gender,", 12.5, halo=False))
    o.append(text(AX, 523, "length of stay in UK", 12.5, halo=False))
    o.append(arrow(AX, 470, AX, AY + 46, INK, 1.3))
    if estimates:
        o.append(text(AX + 8, 444, "age −0.28***, gender 0.18***", 11.5, MUTED, anchor="start"))
        o.append(text(W - 20, 40, "Indirect effects via AGCC (H7, H8):", 12, ACC, "600", anchor="end", halo=False))
        o.append(text(W - 20, 60, "VI → impulsive buying 0.40***, → budgeting −0.21**", 12, ACC, anchor="end", halo=False))
        o.append(text(W - 20, 78, "VC → impulsive buying 0.27**, → budgeting −0.14*", 12, ACC, anchor="end", halo=False))
        o.append(text(W - 20, 96, "HI and HC: not significant", 12, MUTED, anchor="end", halo=False))
    else:
        o.append(text(W - 20, 40, "H7, H8: AGCC mediates the effects of the four values", 12, ACC, anchor="end", halo=False))
        o.append(text(W - 20, 58, "on impulsive buying (+) and money budgeting (−)", 12, ACC, anchor="end", halo=False))
    for a, b, y in lefts:
        o.append(ell(100, y, 92, 42, [a, b]))
    o.append(ell(AX, AY, 92, 46, ["Acculturation to", "global consumer", "culture (AGCC)"], "#fbf6ec"))
    o.append(ell(IX, IY, 100, 40, ["Impulsive", "buying"]))
    o.append(ell(MX, MY, 100, 40, ["Money", "budgeting"]))
    aria = ("Model: vertical and horizontal individualism and collectivism predict acculturation to global consumer "
            "culture, which predicts impulsive buying and money budgeting")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "czarnecka-et-al-2020-agcc-impulsive-model.svg").write_text(model(False))
(here / "czarnecka-et-al-2020-agcc-impulsive-estimates.svg").write_text(model(True))
print("written")
