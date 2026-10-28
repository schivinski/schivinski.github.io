"""Figures for Czarnecka & Schivinski (2022, Journal of Consumer Behaviour 21(2), 180-196):
* the conceptual model (Figure 1, hypothesised signs) and the same model with the estimates printed in Table 2;
* Figures 2 and 3 redrawn as one two-panel plot (line end points read from the published plots)."""
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
    est = ["H1A: β = 0.17*", "H1B: 0.03 (n.s.)", "H2A: β = 0.32***", "H2B: 0.07 (n.s.)"]
    hyp = ["H1A (+)", "H1B (+)", "H2A (−)", "H2B (−)"]
    sig = [True, False, True, False]
    PX, PY = 800, 300
    o = []
    for i, (a, b, y) in enumerate(lefts):
        x1, y1 = 100 + 92, y
        x2, y2 = PX - 108, PY + (i - 1.5) * 22
        col = INK if (sig[i] or not estimates) else GREY
        o.append(arrow(x1, y1, x2, y2, col, 1.7, estimates and not sig[i]))
        lx, ly = x1 + (x2 - x1) * 0.22, y1 + (y2 - y1) * 0.22 - 13
        o.append(text(lx, ly, est[i] if estimates else hyp[i], 12.5, INK if (sig[i] or not estimates) else MUTED,
                      "600" if sig[i] and estimates else "400"))
    # moderators
    gx, lx = 480, 480
    o.append(arrow(gx, 72, gx, 0.5 * (90 + PY - 33) + 8, ACC, 1.6, True))
    o.append(text(gx + 8, 120, "H3A: β = 0.07, p = .09" if estimates else "H3A, H3B (+)", 12, ACC, anchor="start"))
    o.append(arrow(lx, 538, lx, 0.5 * (370 + PY + 11) + 4, ACC, 1.6, True))
    o.append(text(lx + 8, 470, "H4A: β = 0.23*** (positive)" if estimates else "H4A, H4B (−)", 12, ACC, anchor="start"))
    if estimates:
        o.append(text(gx + 84, 52, "direct 0.16***", 11.5, MUTED, anchor="start"))
        o.append(text(lx + 84, 560, "direct 0.04 (n.s.)", 11.5, MUTED, anchor="start"))
    o.append(f'<rect x="{PX + 20}" y="470" width="130" height="58" rx="3" fill="#ffffff" stroke="{INK}" stroke-width="1.4"/>')
    o.append(text(PX + 85, 489, "Controls:", 12.5, halo=False))
    o.append(text(PX + 85, 508, "age, income", 12.5, halo=False))
    o.append(arrow(PX + 85, 470, PX + 40, PY + 50, INK, 1.3))
    if estimates:
        o.append(text(PX + 52, 418, "age 0.11*, income n.s.", 11.5, MUTED, anchor="end"))
    for a, b, y in lefts:
        o.append(ell(100, y, 92, 42, [a, b]))
    o.append(ell(gx, 50, 74, 30, ["Global identity"], "#fbf6ec"))
    o.append(ell(lx, 560, 74, 30, ["Local identity"], "#fbf6ec"))
    o.append(ell(PX, PY, 108, 56, ["Perceived", "consumer", "effectiveness"]))
    aria = ("Conceptual model: vertical and horizontal individualism and collectivism predict perceived consumer "
            "effectiveness, with global identity and local identity as moderators")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


PANELS = [("Global identity moderates vertical individualism", "vertical individualism", "global identity",
           {"High": (2.95, 3.52), "Low": (2.72, 2.97)}),
          ("Local identity moderates vertical collectivism", "vertical collectivism", "local identity",
           {"High": (2.60, 3.90), "Low": (2.98, 3.12)})]


def slopes() -> str:
    W, H = 960, 470
    pw, ph, lo, hi = 330, 300, 1, 5
    o = []
    for k, (title, xv, mod, lines) in enumerate(PANELS):
        x0, y0 = 90 + k * 470, 60
        X = lambda i: x0 + 50 + i * (pw - 100)
        Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
        o.append(text(x0, y0 - 30, title, 14, weight="600", anchor="start", halo=False))
        for v in range(1, 6):
            o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="#eceef2"/>')
            o.append(text(x0 - 8, Y(v), str(v), 12, MUTED, anchor="end", halo=False))
        o.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}"/><line x1="{x0}" y1="{y0 + ph}" '
                 f'x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}"/>')
        o.append(text(X(0), y0 + ph + 18, f"Low {xv}", 12.5, halo=False))
        o.append(text(X(1), y0 + ph + 18, f"High {xv}", 12.5, halo=False))
        for lvl, (a, b) in lines.items():
            c, d = (ACC, "") if lvl == "High" else (INK, ' stroke-dasharray="8 6"')
            o.append(f'<line x1="{X(0):.1f}" y1="{Y(a):.1f}" x2="{X(1):.1f}" y2="{Y(b):.1f}" stroke="{c}" stroke-width="3" '
                     f'stroke-linecap="round"{d}/>')
            o.append(text(X(1) + 8, Y(b), f"{lvl} {mod}", 12, c, anchor="start", halo=False))
    o.append(f'<text transform="translate(28,{60 + 150}) rotate(-90)" font-size="13" fill="{MUTED}" text-anchor="middle">'
             f'Perceived consumer effectiveness</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Higher global identity '
            f'steepens the link between vertical individualism and perceived consumer effectiveness; higher local identity '
            f'steepens the link between vertical collectivism and perceived consumer effectiveness" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "czarnecka-schivinski-2022-pce-model.svg").write_text(model(False))
(here / "czarnecka-schivinski-2022-pce-model-estimates.svg").write_text(model(True))
(here / "czarnecka-schivinski-2022-pce-moderation.svg").write_text(slopes())
print("written")
