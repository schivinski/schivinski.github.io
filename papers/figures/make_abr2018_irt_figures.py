"""Figures for Schivinski, Brzozowska-Woś, Buchanan, Griffiths & Pontes (2018, Addictive Behaviors Reports 8,
176-184), Polish IGDS9-SF: the one-factor CFA (Figure 1), the MIMIC model (Figure 2), and the graded response model
trace curves (Figure 3) and test information curve (Figure 4). Figures 3 and 4 are recomputed from the discrimination
and threshold parameters printed in Table 2 of the article (Samejima graded response model)."""
import math
from pathlib import Path

INK, MUTED, GREY, GRID, ACC = "#15203b", "#5b6476", "#9aa3b5", "#eceef2", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
CAT = ["#15203b", "#8a5a00", "#3f7d6e", "#b5562f", "#7a6fb0"]  # never, rarely, sometimes, often, very often
LABELS = ["Never", "Rarely", "Sometimes", "Often", "Very often"]
ALPHA = [1.72, 1.71, 1.60, 1.53, 1.38, 1.59, 1.48, 0.88, 1.56]
BETA = [[-0.37, 0.54, 1.56, 2.65], [-0.04, 1.02, 2.01, 2.92], [-0.53, 0.55, 1.61, 2.57], [-0.16, 1.01, 2.04, 2.84],
        [0.55, 1.24, 1.96, 2.85], [-0.21, 0.61, 1.38, 2.22], [-0.09, 0.91, 2.09, 3.39], [-1.94, -0.82, 0.90, 2.94],
        [0.06, 0.98, 1.99, 3.12]]
CRIT = ["Preoccupation", "Withdrawal", "Tolerance", "Loss of control", "Give up other activities", "Continuation",
        "Deception", "Escape", "Negative consequences"]
LOAD = [0.73, 0.64, 0.72, 0.63, 0.62, 0.78, 0.60, 0.47, 0.63]


def t(x, y, s, size=12.5, col=INK, anchor="middle", weight="400", halo=False):
    h = ' stroke="#ffffff" stroke-width="4" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle"{h}>{s}</text>')


def head(x, y, ang, col=INK, s=9):
    p1 = (x - s * math.cos(ang - 0.38), y - s * math.sin(ang - 0.38))
    p2 = (x - s * math.cos(ang + 0.38), y - s * math.sin(ang + 0.38))
    return f'<polygon points="{x:.1f},{y:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, col=INK, w=1.5):
    ang = math.atan2(y2 - y1, x2 - x1)
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"/>' + head(x2, y2, ang, col))


def svg(W, H, body, aria):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{body}</svg>\n')


def cfa() -> str:
    W, H = 960, 560
    o = []
    cx, cy = 260, 270
    o.append(f'<ellipse cx="{cx}" cy="{cy}" rx="120" ry="52" fill="#fbf6ec" stroke="{INK}" stroke-width="1.6"/>')
    o.append(t(cx, cy - 9, "Internet Gaming", 14, weight="600"))
    o.append(t(cx, cy + 9, "Disorder", 14, weight="600"))
    for i in range(9):
        y = 40 + i * 56
        bx = 620
        o.append(arrow(cx + 118, cy + (i - 4) * 6, bx, y + 18, INK if LOAD[i] >= 0.5 else MUTED, 1.4))
        o.append(f'<rect x="{bx}" y="{y}" width="300" height="36" rx="3" fill="#ffffff" stroke="{INK}" stroke-width="1.3"/>')
        o.append(t(bx + 14, y + 18, f"Item {i + 1}", 13, weight="600", anchor="start"))
        o.append(t(bx + 76, y + 18, CRIT[i], 13, MUTED, anchor="start"))
        lx = cx + 118 + (bx - cx - 118) * 0.62
        ly = cy + (i - 4) * 6 + (y + 18 - cy - (i - 4) * 6) * 0.62
        o.append(t(lx, ly, f"{LOAD[i]:.2f}", 12.5, ACC if LOAD[i] >= 0.5 else MUTED, weight="600", halo=True))
    o.append(t(20, H - 14, "Standardised loadings (Figure 1 and Table 1 of the article); item 8 (escape) below 0.50; "
               "N = 3,222. Error terms omitted.", 12, MUTED, anchor="start"))
    return svg(W, H, "".join(o), "One-factor CFA of the Polish IGDS9-SF: standardised loadings from 0.47 (escape) "
               "to 0.78 (continuation)")


def mimic() -> str:
    W, H = 960, 440
    o = []
    preds = [("Hours on weekdays", 90, "β = 0.08"), ("Hours at weekends", 210, "β = 0.36"),
             ("Hours per session", 330, "β = 0.09")]
    cx, cy = 690, 210
    for name, y, b in preds:
        o.append(f'<rect x="120" y="{y - 24}" width="210" height="48" rx="3" fill="#ffffff" stroke="{INK}" stroke-width="1.3"/>')
        o.append(t(225, y, name, 13.5, weight="600"))
        o.append(arrow(330, y, cx - 122, cy + (y - 210) * 0.25, INK, 1.6))
        o.append(t(330 + (cx - 122 - 330) * 0.5, y + (cy + (y - 210) * 0.25 - y) * 0.5 - 12, b, 12.5, ACC, weight="600",
                   halo=True))
    # correlations among predictors
    for (y1, y2, r, off) in [(90, 210, "r = .53", 0), (210, 330, "r = .36", 0), (90, 330, "r = .27", 1)]:
        x0 = 120
        bend = 36 if not off else 80
        o.append(f'<path d="M {x0} {y1 + 6} C {x0 - bend} {y1 + 30}, {x0 - bend} {y2 - 30}, {x0} {y2 - 6}" fill="none" '
                 f'stroke="{MUTED}" stroke-width="1.1"/>')
        o.append(head(x0, y1 + 6, math.atan2(-24, bend), MUTED, 7))
        o.append(head(x0, y2 - 6, math.atan2(24, bend), MUTED, 7))
        o.append(t(x0 - bend * 0.75 - 4, (y1 + y2) / 2, r, 11.5, MUTED, anchor="end" if off else "middle", halo=True))
    o.append(f'<ellipse cx="{cx}" cy="{cy}" rx="120" ry="52" fill="#fbf6ec" stroke="{INK}" stroke-width="1.6"/>')
    o.append(t(cx, cy - 9, "Internet Gaming", 14, weight="600"))
    o.append(t(cx, cy + 9, "Disorder", 14, weight="600"))
    o.append(t(cx, cy - 72, "R² = .22", 13, INK, weight="600"))
    o.append(t(cx, cy + 74, "measured by the nine IGDS9-SF items", 12, MUTED))
    o.append(t(20, H - 14, "Standardised estimates (Figure 2 of the article); all paths p &lt; .01; N = 3,222. "
               "χ²(51) = 275.32, CFI = 0.963, TLI = 0.954, RMSEA = 0.037.", 12, MUTED, anchor="start"))
    return svg(W, H, "".join(o), "MIMIC model: time spent gaming at weekends (beta 0.36), on weekdays (0.08) and per "
               "session (0.09) predicts Internet Gaming Disorder")


def pstar(a, b, th):
    return 1 / (1 + math.exp(-a * (th - b)))


def cat_probs(i, th):
    ps = [1.0] + [pstar(ALPHA[i], b, th) for b in BETA[i]] + [0.0]
    return [ps[k] - ps[k + 1] for k in range(5)]


def item_info(i, th):
    a = ALPHA[i]
    ps = [1.0] + [pstar(a, b, th) for b in BETA[i]] + [0.0]
    d = [0.0] + [a * p * (1 - p) for p in ps[1:-1]] + [0.0]
    tot = 0.0
    for k in range(5):
        pk = ps[k] - ps[k + 1]
        if pk > 1e-12:
            tot += (d[k] - d[k + 1]) ** 2 / pk
    return tot


def traces() -> str:
    W, H = 960, 800
    o = []
    pw, ph = 250, 170
    x00, y00 = 90, 70
    ths = [x / 10 for x in range(-60, 61)]
    for k, lab in enumerate(LABELS):
        lx = 120 + k * 160
        o.append(f'<line x1="{lx}" y1="28" x2="{lx + 26}" y2="28" stroke="{CAT[k]}" stroke-width="2.4"/>')
        o.append(t(lx + 32, 28, f"{k + 1} {lab}", 12.5, anchor="start"))
    for i in range(9):
        r, c = divmod(i, 3)
        x0, y0 = x00 + c * (pw + 40), y00 + r * (ph + 64)
        X = lambda v: x0 + (v + 6) / 12 * pw
        Y = lambda v: y0 + ph - v * ph
        for v in (0, 0.5, 1):
            o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
            if c == 0:
                o.append(t(x0 - 6, Y(v), f"{v:g}", 11, MUTED, anchor="end"))
        for v in (-6, -3, 0, 3, 6):
            o.append(f'<line x1="{X(v):.1f}" y1="{y0 + ph}" x2="{X(v):.1f}" y2="{y0 + ph + 4}" stroke="{MUTED}"/>')
            o.append(t(X(v), y0 + ph + 14, str(v).replace("-", "−"), 11, MUTED))
        o.append(f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}"/>')
        for k in range(5):
            pts = " ".join(f"{X(th):.1f},{Y(cat_probs(i, th)[k]):.1f}" for th in ths)
            o.append(f'<polyline points="{pts}" fill="none" stroke="{CAT[k]}" stroke-width="1.8"/>')
        o.append(t(x0, y0 - 12, f"Item {i + 1}: {CRIT[i].lower()}", 12.5, weight="600", anchor="start"))
        o.append(t(x0 + pw, y0 - 12, f"α = {ALPHA[i]:.2f}", 11.5, MUTED, anchor="end"))
    o.append(t(x00 + 1.5 * (pw + 40) - 20, H - 34, "θ (gaming disorder, standardised latent trait)", 12.5, MUTED))
    o.append(f'<text transform="translate(26,{y00 + 1.5 * (ph + 64)}) rotate(-90)" font-size="12.5" fill="{MUTED}" '
             f'text-anchor="middle">Probability of each response</text>')
    o.append(t(20, H - 10, "Recomputed from the graded response model parameters in Table 2 of the article "
               "(N = 3,222).", 12, MUTED, anchor="start"))
    return svg(W, H, "".join(o), "Graded response model trace curves for the nine IGDS9-SF items; 'very often' becomes "
               "the most likely answer only at high levels of the trait, and item 8 (escape) has the flattest curves")


def information() -> str:
    W, H = 960, 470
    o = []
    x0, y0, pw, ph = 90, 40, 820, 340
    ths = [x / 20 for x in range(-80, 81)]
    tot = [sum(item_info(i, th) for i in range(9)) for th in ths]
    top = math.ceil(max(tot))
    X = lambda v: x0 + (v + 4) / 8 * pw
    Y = lambda v: y0 + ph - v / top * ph
    for v in range(0, top + 1, 2):
        o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
        o.append(t(x0 - 8, Y(v), str(v), 12, MUTED, anchor="end"))
    for v in range(-4, 5):
        o.append(t(X(v), y0 + ph + 18, str(v).replace("-", "−"), 12, MUTED))
    o.append(f'<rect x="{X(0):.1f}" y="{y0}" width="{X(2) - X(0):.1f}" height="{ph}" fill="#fbf6ec"/>')
    o.append(t((X(0) + X(2)) / 2, y0 + 14, "peak: 0 to 2 SD above the mean", 12, ACC, weight="600"))
    pts = " ".join(f"{X(th):.1f},{Y(v):.1f}" for th, v in zip(ths, tot))
    o.append(f'<polyline points="{pts}" fill="none" stroke="{INK}" stroke-width="2.4"/>')
    o.append(f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}"/>')
    o.append(t(x0 + pw / 2, y0 + ph + 40, "θ (gaming disorder, standardised latent trait)", 12.5, MUTED))
    o.append(f'<text transform="translate(30,{y0 + ph / 2}) rotate(-90)" font-size="12.5" fill="{MUTED}" '
             f'text-anchor="middle">Test information I(θ)</text>')
    o.append(t(20, H - 12, "Recomputed from the graded response model parameters in Table 2 of the article "
               "(N = 3,222).", 12, MUTED, anchor="start"))
    return svg(W, H, "".join(o), "Test information curve of the Polish IGDS9-SF, highest between 0 and 2 standard "
               "deviations above the mean")


here = Path(__file__).parent
(here / "schivinski-et-al-2018-igds9sf-pl-cfa.svg").write_text(cfa())
(here / "schivinski-et-al-2018-igds9sf-pl-mimic.svg").write_text(mimic())
(here / "schivinski-et-al-2018-igds9sf-pl-trace-curves.svg").write_text(traces())
(here / "schivinski-et-al-2018-igds9sf-pl-information.svg").write_text(information())
print("written")
