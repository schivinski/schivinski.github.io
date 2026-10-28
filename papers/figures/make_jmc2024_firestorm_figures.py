"""Redraw Figure 1 of Langaro, Loureiro, Schivinski & Neves (2024, Journal of Marketing Communications 30(3), 301-317):
moderation of the effect of brand attitude on intentions to forward negative e-WOM by type of response strategy.
Line end points read from the published plot (no values labelled)."""
from pathlib import Path

INK, MUTED, ACC, GRID = "#15203b", "#5b6476", "#8a5a00", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
LINES = {"Apology": ((1.77, 4.41), (5.12, 3.35)), "Corrective action": ((1.77, 3.60), (5.17, 3.40))}
STYLE = {"Apology": ("", 3.0, ACC), "Corrective action": ("9 6", 3.0, INK)}


def t(x, y, s, size=13.5, col=INK, anchor="middle"):
    return f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" dominant-baseline="middle">{s}</text>'


def svg() -> str:
    W, H = 900, 560
    x0, y0, pw, ph = 110, 40, 560, 420
    xl, xh, yl, yh = 1.75, 5.25, 3.3, 4.5
    X = lambda v: x0 + (v - xl) / (xh - xl) * pw
    Y = lambda v: y0 + ph - (v - yl) / (yh - yl) * ph
    o = []
    for v in (3.4, 3.6, 3.8, 4.0, 4.2, 4.4):
        o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
        o.append(t(x0 - 10, Y(v), f"{v:.2f}", 12.5, MUTED, "end"))
    for v in (2, 2.5, 3, 3.5, 4, 4.5, 5):
        o.append(t(X(v), y0 + ph + 18, f"{v:.1f}", 12.5, MUTED))
    o.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.4"/>'
             f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.4"/>')
    for k, ((a, b), (c, d)) in LINES.items():
        dash, w, col = STYLE[k]
        da = f' stroke-dasharray="{dash}"' if dash else ""
        o.append(f'<line x1="{X(a):.1f}" y1="{Y(b):.1f}" x2="{X(c):.1f}" y2="{Y(d):.1f}" stroke="{col}" stroke-width="{w}" stroke-linecap="round"{da}/>')
    o.append(t(x0 + pw / 2, y0 + ph + 46, "Brand attitude after the response (1 to 7)", 14, MUTED))
    o.append(f'<text transform="translate(40,{y0 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" text-anchor="middle">Intention to forward the negative e-WOM</text>')
    lx, ly = x0 + pw + 36, 130
    o.append(t(lx, ly - 34, "Response strategy", 13.5, INK, "start"))
    for i, k in enumerate(LINES):
        dash, w, col = STYLE[k]
        da = f' stroke-dasharray="{dash}"' if dash else ""
        y = ly + i * 32
        o.append(f'<line x1="{lx}" y1="{y}" x2="{lx + 44}" y2="{y}" stroke="{col}" stroke-width="{w}" stroke-linecap="round"{da}/>')
        o.append(t(lx + 54, y, k, 13.5, INK, "start"))
    o.append(t(lx, ly + 86, "Interaction: β = .262, p &lt; .05", 12.5, MUTED, "start"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="After an apology, '
            f'intentions to forward the negative post fall steeply as brand attitude improves; after a corrective action '
            f'they fall only slightly" font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("langaro-et-al-2024-firestorm-moderation.svg").write_text(svg())
print("written")
