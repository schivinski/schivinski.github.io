"""Figures for Schivinski, Langaro & Shaw (2019, Event Management 23(6), 835-853): the conceptual model (Figure 1)
and the standardised direct estimates (Figure 2 and Table 2). The two non-significant paths, left out of the
article's Figure 2, are drawn here as grey dashed lines with their Table 2 values."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x, y, ang, col, s=9):
    p1 = (x - s * math.cos(ang - 0.38), y - s * math.sin(ang - 0.38))
    p2 = (x - s * math.cos(ang + 0.38), y - s * math.sin(ang + 0.38))
    return f'<polygon points="{x:.1f},{y:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


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
    W, H = 960, 480 if estimates else 450
    FC, UG, BA, EA, IN = (200, 100), (200, 360), (520, 100), (520, 360), (840, 230)
    R = (100, 40)
    o = []
    # (from, to, start, end, label, significant, label position fraction, offset)
    paths = [
        ("H1a", "0.32 (3.73)", True, (FC[0] + 100, FC[1]), (BA[0] - 100, BA[1]), 0.5, (0, -14)),
        ("H1b", "0.30 (4.04)", True, (UG[0] + 80, UG[1] - 25), (BA[0] - 80, BA[1] + 25), 0.3, (-14, 0)),
        ("H2a", "0.12 (n.s.)", False, (FC[0] + 80, FC[1] + 25), (EA[0] - 80, EA[1] - 25), 0.9, (-14, 0)),
        ("H2b", "0.24 (2.62)", True, (UG[0] + 100, UG[1]), (EA[0] - 100, EA[1]), 0.5, (0, 14)),
        ("H3", "0.33 (4.59)", True, (BA[0], BA[1] + 40), (EA[0], EA[1] - 40), 0.5, (12, 0)),
        ("H4", "0.03 (n.s.)", False, (BA[0] + 92, BA[1] + 16), (IN[0] - 82, IN[1] - 24), 0.5, (10, -16)),
        ("H5", "0.34 (4.29)", True, (EA[0] + 92, EA[1] - 16), (IN[0] - 82, IN[1] + 24), 0.5, (10, 16)),
    ]
    for hyp, est, sig, (x1, y1), (x2, y2), f, (dx, dy) in paths:
        col = INK if (sig or not estimates) else GREY
        o.append(arrow(x1, y1, x2, y2, col, 1.7, estimates and not sig))
        lx, ly = x1 + (x2 - x1) * f + dx, y1 + (y2 - y1) * f + dy
        lab = f"{hyp}: {est}" if estimates else hyp
        anchor = "start" if dx > 5 else ("end" if dx < -5 else "middle")
        o.append(text(lx, ly, lab, 12, (ACC if sig else MUTED) if estimates else INK,
                      "600" if sig and estimates else "400", anchor))
    if estimates:
        # correlation between the two content sources
        x0, y0, y1 = FC[0] - 100, FC[1] + 6, UG[1] - 6
        o.append(f'<path d="M {x0 + 6} {y0 + 10} C {x0 - 50} {y0 + 70}, {x0 - 50} {y1 - 70}, {x0 + 6} {y1 - 10}" '
                 f'fill="none" stroke="{INK}" stroke-width="1.3"/>')
        o.append(head(x0 + 6, y0 + 10, math.atan2(-60, 56), INK))
        o.append(head(x0 + 6, y1 - 10, math.atan2(60, 56), INK))
        o.append(text(x0 - 26, (y0 + y1) / 2, "0.55 (5.27)", 12, INK, "400", "middle"))
    o.append(ell(*FC, *R, ["Firm-created", "content"]))
    o.append(ell(*UG, *R, ["User-generated", "content"]))
    o.append(ell(*BA, 92, 40, ["Brand attitude"], "#fbf6ec"))
    o.append(ell(*EA, 92, 40, ["Event attitude"], "#fbf6ec"))
    o.append(ell(*IN, 82, 40, ["Intention to", "participate"]))
    if estimates:
        o.append(text(20, H - 16, "Standardised coefficients with t values in parentheses (Figure 2 and Table 2 of the "
                      "article); grey dashed paths not significant; n = 307.", 12, MUTED, anchor="start",
                      halo=False))
    aria = ("Model: firm-created and user-generated social media content predict brand attitude and event attitude; "
            "brand attitude predicts event attitude; both attitudes predict intention to participate in a "
            "brand-sponsored event")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "schivinski-langaro-shaw-2019-events-model.svg").write_text(model(False))
(here / "schivinski-langaro-shaw-2019-events-estimates.svg").write_text(model(True))
print("written")
