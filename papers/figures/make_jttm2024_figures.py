"""Draw Figures 1-3 of Leite, Pontes & Schivinski (2024, Journal of Travel & Tourism Marketing) as SVG.
All numbers are as printed in the article (Figure 2 point labels; Figure 3 path estimates)."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=10):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, *, col=INK, dashed=False, w=1.7):
    ang = math.atan2(y2 - y1, x2 - x1)
    dash = ' stroke-dasharray="6 5"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 8 * math.cos(ang):.1f}" y2="{y2 - 8 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"{dash}/>' + head(x2, y2, ang, col))


def text(x, y, lines, *, size=14, col=INK, weight="400", anchor="middle", lh=17, italic=False):
    st = ' font-style="italic"' if italic else ""
    out = []
    y0 = y - (len(lines) - 1) * lh / 2
    for i, t in enumerate(lines):
        out.append(f'<text x="{x:.1f}" y="{y0 + i * lh:.1f}" font-size="{size}" font-weight="{weight}"{st} fill="{col}" '
                   f'text-anchor="{anchor}" dominant-baseline="middle" stroke="#ffffff" stroke-width="4" '
                   f'stroke-linejoin="round" paint-order="stroke">{t}</text>')
    return "".join(out)


def box(x0, y0, x1, y1, lines, *, fill="#ffffff", sub=None):
    out = f'<rect x="{x0}" y="{y0}" width="{x1 - x0}" height="{y1 - y0}" rx="4" fill="{fill}" stroke="{INK}" stroke-width="1.8"/>'
    cx, cy = (x0 + x1) / 2, (y0 + y1) / 2
    if sub:
        out += text(cx, cy - 9, lines, size=15, weight="600") + text(cx, cy + 9 + (len(lines) - 1) * 8, sub, size=12, col=MUTED, lh=15)
    else:
        out += text(cx, cy, lines, size=15, weight="600")
    return out


SC = (40, 30, 260, 96)       # competence need fulfilment
CG = (330, 70, 570, 150)     # content-expertise congruence
TR = (40, 300, 290, 380)     # travel recommendations
CR = (640, 300, 860, 380)    # credibility


def model(est: bool) -> str:
    b = []
    a_start, a_end = (190, 300), (420, 150)
    b.append(arrow(*a_start, *a_end))                       # a path
    b.append(arrow(540, 150, 720, 300))                     # b path
    b.append(arrow(290, 340, 640, 340))                     # c' path
    mx, my = 0.5 * (a_start[0] + a_end[0]), 0.5 * (a_start[1] + a_end[1])
    b.append(arrow(150, 96, mx, my, col=ACC, dashed=True, w=1.5))  # moderation onto the a path
    if est:
        b.append(text(mx + 70, my + 52, ["Interaction effect:", "b = 0.18, SE = 0.08,", "t = 2.15, p &lt; .05"], size=12.5, lh=15))
        b.append(text(700, 205, ["b = 0.79, SE = 0.04,", "t = 16.77, p &lt; .001"], size=12.5, lh=15))
        b.append(text(465, 368, ["Direct effect: b = 0.20, SE = 0.11, t = 1.77, p &gt; .05 (n.s.)"], size=12.5, col=MUTED))
    else:
        b.append(text(255, 210, ["H2"], size=13, col=MUTED, italic=True))
        b.append(text(645, 210, ["H2"], size=13, col=MUTED, italic=True))
        b.append(text(465, 325, ["H1"], size=13, col=MUTED, italic=True))
        b.append(text(195, 160, ["H3"], size=13, col=ACC, italic=True))
    b.append(box(*SC, ["Fulfilment of", "competence needs"], fill="#fbf6ec"))
    b.append(box(*CG, ["Influencer’s content–", "expertise congruence"]))
    b.append(box(*TR, ["Travel recommendations"], sub=["0 = without intimacy, 1 = with intimacy"]))
    b.append(box(*CR, ["Influencer credibility"]))
    label = ("Moderated mediation estimates" if est else "Conceptual model")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 900 400" role="img" aria-label="{label}: intimate '
            f'self-disclosure, content-expertise congruence, competence need fulfilment and influencer credibility" '
            f'font-family="{FONT}"><rect width="900" height="400" fill="#ffffff"/>{"".join(b)}</svg>\n')


def slopes() -> str:
    W, H = 900, 470
    x0, y0, pw, ph = 110, 40, 700, 330
    lo, hi = 1, 5
    X = lambda i: x0 + 110 + i * (pw - 220) / 2
    Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
    out = []
    for v in range(1, 6):
        out.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="#e8ebf0"/>'
                   f'<text x="{x0 - 10}" y="{Y(v):.1f}" font-size="13" fill="{MUTED}" text-anchor="end" '
                   f'dominant-baseline="middle">{v}</text>')
    out.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.2"/>'
               f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.2"/>')
    for i, t in enumerate(("Low (−1 SD)", "Average", "High (+1 SD)")):
        out.append(f'<text x="{X(i):.1f}" y="{y0 + ph + 20}" font-size="13" fill="{INK}" text-anchor="middle">{t}</text>')
    out.append(f'<text x="{x0 + pw / 2}" y="{y0 + ph + 44}" font-size="13" fill="{MUTED}" text-anchor="middle">'
               f'Fulfilment of competence needs</text>')
    out.append(f'<text transform="translate({x0 - 48},{y0 + ph / 2}) rotate(-90)" font-size="13" fill="{MUTED}" '
               f'text-anchor="middle">Influencer’s content–expertise congruence</text>')
    series = {"Without intimacy": ([3.18, 3.60, 4.02], "8 5", INK), "With intimacy": ([1.98, 2.68, 3.38], "", ACC)}
    for name, (vals, dash, col) in series.items():
        d = f' stroke-dasharray="{dash}"' if dash else ""
        pts = " ".join(f"{X(i):.1f},{Y(v):.1f}" for i, v in enumerate(vals))
        out.append(f'<polyline points="{pts}" fill="none" stroke="{col}" stroke-width="2.6"{d} stroke-linecap="round"/>')
        for i, v in enumerate(vals):
            out.append(f'<circle cx="{X(i):.1f}" cy="{Y(v):.1f}" r="4.5" fill="{col}"/>')
            out.append(text(X(i), Y(v) - 16, [f"{v:.2f}"], size=13, col=col, weight="600"))
    lx = 300
    for i, (name, (vals, dash, col)) in enumerate(series.items()):
        d = f' stroke-dasharray="{dash}"' if dash else ""
        x = lx + i * 190
        out.append(f'<line x1="{x}" y1="452" x2="{x + 40}" y2="452" stroke="{col}" stroke-width="2.6"{d}/>'
                   f'<text x="{x + 48}" y="452" font-size="13" fill="{MUTED}" dominant-baseline="middle">{name}</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="The effect of intimate '
            f'content and competence need fulfilment on perceived content-expertise congruence" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(out)}</svg>\n')


here = Path(__file__).parent
(here / "leite-et-al-2024-influencer-model.svg").write_text(model(False))
(here / "leite-et-al-2024-influencer-congruence.svg").write_text(slopes())
(here / "leite-et-al-2024-influencer-estimates.svg").write_text(model(True))
print("written")
