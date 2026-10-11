"""Figures for Schivinski, Li, Alahmari, Nguyen, Czarnecka & Loureiro (2025), Journal of Product & Brand Management.

1. Conceptual model (the article's Figure 1): four city branding aspects -> perceived city brand coolness ->
   cognitive, emotional and behavioural social media engagement.
2. The same model with the estimated a and b paths from Table 2 of the article (structural model, N = 537).
"""
import math
from pathlib import Path

INK, MUTED, GREY, AMBER = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
W, H = 760, 440
NODES = {
    "PA": (120, 105, 92, 34, ["Physical", "attributes"]),
    "FA": (120, 200, 92, 34, ["Functional", "attributes"]),
    "IV": (120, 295, 92, 34, ["Individual", "value"]),
    "SV": (120, 390, 92, 34, ["Social", "value"]),
    "CO": (390, 247, 86, 40, ["City brand", "coolness"]),
    "CE": (650, 140, 92, 34, ["Cognitive", "engagement"]),
    "EE": (650, 247, 92, 34, ["Emotional", "engagement"]),
    "BE": (650, 354, 92, 34, ["Behavioral", "engagement"]),
}


def edge_point(n, tx, ty):
    cx, cy, rx, ry, _ = NODES[n]
    dx, dy = tx - cx, ty - cy
    k = 1 / math.sqrt((dx / rx) ** 2 + (dy / ry) ** 2)
    return cx + dx * k, cy + dy * k


def arrow(a, b, label, *, ns=False, pos=0.5, off=-13, size=14, italic=True, bold=False):
    ax, ay = NODES[a][:2]
    bx, by = NODES[b][:2]
    x1, y1 = edge_point(a, bx, by)
    x2, y2 = edge_point(b, ax, ay)
    ang = math.atan2(y2 - y1, x2 - x1)
    x2g, y2g = x2 - 3 * math.cos(ang), y2 - 3 * math.sin(ang)
    col = GREY if ns else INK
    dash = ' stroke-dasharray="6 5"' if ns else ""
    hd = 10
    hx1, hy1 = x2g - hd * math.cos(ang - 0.38), y2g - hd * math.sin(ang - 0.38)
    hx2, hy2 = x2g - hd * math.cos(ang + 0.38), y2g - hd * math.sin(ang + 0.38)
    mx, my = x1 + (x2 - x1) * pos, y1 + (y2 - y1) * pos
    nx, ny = -math.sin(ang), math.cos(ang)
    lx, ly = mx + nx * off, my + ny * off
    rot = math.degrees(ang)
    if rot > 90 or rot < -90:
        rot += 180
    style = (' font-style="italic"' if italic else "") + (' font-weight="600"' if bold else "")
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2g - hd * .8 * math.cos(ang):.1f}" y2="{y2g - hd * .8 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="1.8"{dash}/>'
            f'<polygon points="{x2g:.1f},{y2g:.1f} {hx1:.1f},{hy1:.1f} {hx2:.1f},{hy2:.1f}" fill="{col}"/>'
            f'<text x="{lx:.1f}" y="{ly:.1f}" font-size="{size}"{style} fill="{MUTED if ns else INK}" text-anchor="middle" '
            f'dominant-baseline="middle" transform="rotate({rot:.1f} {lx:.1f} {ly:.1f})">{label}</text>')


def nodes():
    out = []
    for n, (cx, cy, rx, ry, lines) in NODES.items():
        fill = "#fdf3df" if n == "CO" else "#ffffff"
        stroke = "#e0a12a" if n == "CO" else INK
        out.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" stroke="{stroke}" stroke-width="1.8"/>')
        y0 = cy - (len(lines) - 1) * 9
        for i, t in enumerate(lines):
            out.append(f'<text x="{cx}" y="{y0 + i * 18:.0f}" font-size="15" fill="{INK}" text-anchor="middle" '
                       f'dominant-baseline="middle">{t}</text>')
    out.append(f'<text x="120" y="38" font-size="13" font-weight="600" fill="{MUTED}" text-anchor="middle">City branding aspects</text>')
    out.append(f'<text x="650" y="76" font-size="13" font-weight="600" fill="{MUTED}" text-anchor="middle">City-related social media</text>'
               f'<text x="650" y="94" font-size="13" font-weight="600" fill="{MUTED}" text-anchor="middle">engagement</text>')
    return "".join(out)


def svg(body, title, foot=""):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{title}" '
            f'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif">{body}{nodes()}{foot}</svg>\n')


A = [("PA", "H1"), ("FA", "H2"), ("IV", "H3"), ("SV", "H4")]
B = [("CE", "a"), ("EE", "b"), ("BE", "c")]
fig1 = svg("".join(arrow(n, "CO", l, pos=0.55) for n, l in A) + "".join(arrow("CO", n, l, pos=0.5) for n, l in B),
           "Conceptual model: city branding aspects affect social media engagement through perceived city brand coolness")

EST_A = {"PA": "0.09*", "FA": "0.42***", "IV": "0.31***", "SV": "0.26***"}
EST_B = {"CE": ("0.62***", False), "EE": ("−0.24 (n.s.)", True), "BE": ("0.54***", False)}
body2 = "".join(arrow(n, "CO", EST_A[n], pos=0.55, italic=False, bold=True) for n, _ in A)
body2 += "".join(arrow("CO", n, v, pos=0.5, ns=ns, italic=False, bold=not ns) for n, (v, ns) in EST_B.items())
foot = ""  # notes go in the page caption
fig2 = svg(body2, "Estimated paths of the structural model", foot)

here = Path(__file__).parent
(here / "schivinski-et-al-2025-city-coolness-model.svg").write_text(fig1)
(here / "schivinski-et-al-2025-city-coolness-estimates.svg").write_text(fig2)
print("written")
