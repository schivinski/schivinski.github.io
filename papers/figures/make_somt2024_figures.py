"""Draw the model of Schivinski, Mancuso & Brzozowska-Woś (2024, Scientific Papers of Silesian University of
Technology, Organization and Management Series 204) as SVG, with the standardised estimates printed in Table 2
and Figure 2 of the article."""
import math
from pathlib import Path

INK, MUTED, ACC = "#15203b", "#5b6476", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=9):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, col=INK, w=1.8, dashed=False):
    ang = math.atan2(y2 - y1, x2 - x1)
    d = ' stroke-dasharray="5 4"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"{d}/>' + head(x2, y2, ang, col))


def text(x, y, t, size=14, col=INK, weight="400", anchor="middle"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle">{t}</text>')


def ellipse(cx, cy, rx, ry, lines, fill="#ffffff"):
    s = f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(text(cx, y0 + i * 17, t, weight="600") for i, t in enumerate(lines))


def model() -> str:
    W, H = 960, 380
    rx, ry, cy = 100, 50, 130
    xs = [130, 480, 830]
    b = [ellipse(xs[0], cy, rx, ry, ["Brand", "experience"]),
         ellipse(xs[1], cy, rx, ry, ["Emotional", "response"], fill="#fbf6ec"),
         ellipse(xs[2], cy, rx, ry, ["Consumer brand", "engagement"])]
    b.append(arrow(xs[0] + rx, cy, xs[1] - rx, cy))
    b.append(text((xs[0] + xs[1]) / 2, cy - 18, "H1: β = 0.39***", weight="600"))
    b.append(arrow(xs[1] + rx, cy, xs[2] - rx, cy))
    b.append(text((xs[1] + xs[2]) / 2, cy - 18, "H2: β = 0.50***", weight="600"))
    b.append(text(xs[2] + 70, cy - ry - 14, "R² = 0.27", size=13, col=MUTED))
    # controls
    bx, by, bw, bh = xs[2] - 85, 285, 170, 58
    b.append(f'<rect x="{bx}" y="{by}" width="{bw}" height="{bh}" rx="3" fill="#ffffff" stroke="{INK}" stroke-width="1.4"/>')
    b.append(text(xs[2], by + 19, "Control variables:", size=13))
    b.append(text(xs[2], by + 38, "age, gender", size=13))
    b.append(arrow(xs[2], by, xs[2], cy + ry, w=1.3))
    b.append(text(xs[2] - 10, (by + cy + ry) / 2, "age 0.13, gender 0.01 (both n.s.)", size=12, col=MUTED, anchor="end"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Brand experience '
            f'increases emotional response, which increases consumer brand engagement, controlling for age and gender" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(b)}</svg>\n')


here = Path(__file__).parent
(here / "schivinski-et-al-2024-sports-brand-experience-model.svg").write_text(model())
print("written")
