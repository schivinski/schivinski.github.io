"""Figures 1 and 2 of Schivinski & Dabrowski (2015), Journal of Research in Interactive Marketing 9(1), 31-53,
redrawn as SVG: conceptual framework (hypotheses) and standardised estimates of the final structural model,
with labels and significance marks as printed."""
import math
from pathlib import Path

INK, MUTED, AMBER, GREY = "#15203b", "#5b6476", "#8a5a00", "#9aa3b5"
W, H = 720, 420
NODES = {  # name: (cx, cy, rx, ry, label lines)
    "FC": (118, 125, 106, 44, ["Firm-created", "social media", "communication"]),
    "UG": (118, 295, 106, 44, ["User-generated", "social media", "communication"]),
    "BL": (590, 50, 92, 32, ["Brand loyalty"]),
    "BAW": (590, 210, 106, 40, ["Brand awareness/", "associations"]),
    "PQ": (590, 370, 92, 32, ["Perceived quality"]),
}


def edge_point(n, tx, ty):
    cx, cy, rx, ry, _ = NODES[n]
    dx, dy = tx - cx, ty - cy
    k = 1 / math.sqrt((dx / rx) ** 2 + (dy / ry) ** 2)
    return cx + dx * k, cy + dy * k


def arrow(a, b, label, *, ns=False, pos=0.5, off=14, label_size=14, italic=True):
    ax, ay = NODES[a][:2]
    bx, by = NODES[b][:2]
    x1, y1 = edge_point(a, bx, by)
    x2, y2 = edge_point(b, ax, ay)
    ang = math.atan2(y2 - y1, x2 - x1)
    gap = 3
    x2g, y2g = x2 - gap * math.cos(ang), y2 - gap * math.sin(ang)
    col = GREY if ns else INK
    dash = ' stroke-dasharray="6 5"' if ns else ""
    head = 10
    hx1 = x2g - head * math.cos(ang - 0.38); hy1 = y2g - head * math.sin(ang - 0.38)
    hx2 = x2g - head * math.cos(ang + 0.38); hy2 = y2g - head * math.sin(ang + 0.38)
    mx, my = x1 + (x2 - x1) * pos, y1 + (y2 - y1) * pos
    nx, ny = -math.sin(ang), math.cos(ang)        # normal
    lx, ly = mx + nx * off, my + ny * off
    rot = math.degrees(ang)
    if rot > 90 or rot < -90:
        rot += 180
    style = ' font-style="italic"' if italic else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2g - head*0.8*math.cos(ang):.1f}" y2="{y2g - head*0.8*math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="1.8"{dash}/>'
            f'<polygon points="{x2g:.1f},{y2g:.1f} {hx1:.1f},{hy1:.1f} {hx2:.1f},{hy2:.1f}" fill="{col}"/>'
            f'<text x="{lx:.1f}" y="{ly:.1f}" font-size="{label_size}"{style} fill="{MUTED if ns else INK}" '
            f'text-anchor="middle" dominant-baseline="middle" transform="rotate({rot:.1f} {lx:.1f} {ly:.1f})">{label}</text>')


def nodes():
    out = []
    for n, (cx, cy, rx, ry, lines) in NODES.items():
        out.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="#ffffff" stroke="{INK}" stroke-width="1.8"/>')
        y0 = cy - (len(lines) - 1) * 9
        for i, t in enumerate(lines):
            out.append(f'<text x="{cx}" y="{y0 + i*18:.0f}" font-size="15" fill="{INK}" text-anchor="middle" '
                       f'dominant-baseline="middle">{t}</text>')
    return "".join(out)


def svg(body, title):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{title}" '
            f'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif">{body}{nodes()}</svg>\n')



paths1 = [("FC", "BL", "H2a", {"pos": 0.72, "off": -13}), ("UG", "BL", "H2b", {"pos": 0.8, "off": -13}),
          ("FC", "BAW", "H1a", {"pos": 0.78, "off": -13}), ("UG", "BAW", "H1b", {"pos": 0.78, "off": -13}),
          ("FC", "PQ", "H3a", {"pos": 0.8, "off": 13}), ("UG", "PQ", "H3b", {"pos": 0.78, "off": 13}),
          ("BAW", "BL", "H4", {"off": -14}), ("BAW", "PQ", "H5", {"off": -14})]
fig1 = svg("".join(arrow(a, b, l, **kw) for a, b, l, kw in paths1),
           "Conceptual framework: firm-created and user-generated social media communication affecting brand loyalty, brand awareness/associations and perceived quality (H1a to H5)")

paths2 = [("FC", "BL", "H2a: n.s.", {"pos": 0.72, "off": -13, "ns": True, "label_size": 13}),
          ("UG", "BL", "H2b: 0.24***", {"pos": 0.8, "off": -13, "label_size": 13}),
          ("FC", "BAW", "H1a: 0.14**", {"pos": 0.78, "off": -13, "label_size": 13}),
          ("UG", "BAW", "H1b: 0.12*", {"pos": 0.78, "off": -13, "label_size": 13}),
          ("FC", "PQ", "H3a: n.s.", {"pos": 0.8, "off": 13, "ns": True, "label_size": 13}),
          ("UG", "PQ", "H3b: 0.26***", {"pos": 0.78, "off": 13, "label_size": 13}),
          ("BAW", "BL", "H4: 0.13**", {"off": -16, "label_size": 13}),
          ("BAW", "PQ", "H5: 0.22***", {"off": -16, "label_size": 13})]
fig2 = svg("".join(arrow(a, b, l, **kw) for a, b, l, kw in paths2),
           "Standardised estimates of the final structural model")

here = Path(__file__).parent
(here / "schivinski-dabrowski-2015-model.svg").write_text(fig1)
(here / "schivinski-dabrowski-2015-estimates.svg").write_text(fig2)
print("written")
