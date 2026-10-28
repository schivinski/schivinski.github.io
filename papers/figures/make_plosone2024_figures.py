"""Redraw Figure 1 of Li, Alahmari & Schivinski (2024, PLOS ONE 19(1), e0296162): the framework of religion city
branding through stakeholder engagement (CC BY 4.0)."""
import math
from pathlib import Path

INK, MUTED, ACC = "#15203b", "#5b6476", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col=INK, s=9):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, col=INK):
    a = math.atan2(y2 - y1, x2 - x1)
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(a):.1f}" y2="{y2 - 7 * math.sin(a):.1f}" '
            f'stroke="{col}" stroke-width="1.5"/>' + head(x2, y2, a, col))


def box(x, y, w, h, title, items=(), fill="#ffffff", size=13):
    s = f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="4" fill="{fill}" stroke="{INK}" stroke-width="1.5"/>'
    lines = ([(title, "600")] if title else []) + [(i, "400") for i in items]
    y0 = y + h / 2 - (len(lines) - 1) * 9
    for k, (tx, wt) in enumerate(lines):
        s += (f'<text x="{x + w / 2}" y="{y0 + k * 18:.1f}" font-size="{size}" font-weight="{wt}" fill="{INK}" '
              f'text-anchor="middle" dominant-baseline="middle">{tx}</text>')
    return s


def svg() -> str:
    W, H = 960, 520
    o = []
    dims = [("Physical attributes", ["Religious design", "Religious colour", "Religious architecture", "Religious logos", "Religious figures"], 20),
            ("Functional attributes", ["Clean environment", "Business opportunities", "Cultural activities", "Government services", "Transport", "Internal governance"], 186),
            ("Personality traits", ["Social bonding/community", "City brand attitudes", "Intentions", "Religious beliefs", "Religious values", "Religious ritual"], 358)]
    bx, bw = 20, 210
    cx, cy, cw, ch = 330, 200, 190, 120
    for title, items, y in dims:
        h = 150 if len(items) == 5 else 150
        o.append(box(bx, y, bw, h, title + ":", items, size=12.5))
        o.append(arrow(bx + bw, y + h / 2, cx, cy + ch / 2 + (y - 186) * 0.25))
    o.append(box(cx, cy, cw, ch, "", ["Religion city branding", "through stakeholder", "engagement"], fill="#fbf6ec", size=13.5))
    sx = 610
    o.append(box(sx, cy, 170, ch, "", ["Social development"], size=13.5))
    o.append(arrow(cx + cw, cy + ch / 2, sx, cy + ch / 2))
    for y, lab in ((60, ["Individual-level", "engagement"]), (380, ["Social-level", "engagement"])):
        o.append(box(830, y, 120, 80, "", lab, size=12.5))
        o.append(arrow(830, y + 40, sx + 170, cy + (30 if y < 200 else ch - 30)))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Framework of '
            f'religion city branding: religious physical attributes, functional attributes and personality traits feed '
            f'city branding through stakeholder engagement, which leads to social development, supported by '
            f'individual-level and social-level engagement" font-family="{FONT}"><rect width="{W}" height="{H}" '
            f'fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("li-alahmari-schivinski-2024-religion-city-branding-framework.svg").write_text(svg())
print("written")
