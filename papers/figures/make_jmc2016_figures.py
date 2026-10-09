"""Draw Figures 1 and 2 of Schivinski & Dabrowski (2016) as SVG (conceptual model and standardised estimates)."""
import math
from pathlib import Path

INK, MUTED, AMBER, GREY = "#15203b", "#5b6476", "#8a5a00", "#9aa3b5"
W, H = 720, 360
NODES = {  # name: (cx, cy, rx, ry, label lines)
    "FC": (112, 70, 96, 36, ["Firm-created", "communication"]),
    "UG": (112, 290, 96, 36, ["User-generated", "communication"]),
    "BE": (380, 70, 84, 34, ["Brand equity"]),
    "BA": (380, 290, 84, 34, ["Brand attitude"]),
    "PI": (628, 180, 84, 36, ["Purchase", "intention"]),
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


paths1 = [("FC", "BE", "H1a", {}), ("UG", "BE", "H1b", {"pos": 0.8, "off": -14}), ("FC", "BA", "H3a", {"pos": 0.72, "off": 14}),
          ("UG", "BA", "H3b", {}), ("BA", "BE", "H2", {"off": -14}), ("BE", "PI", "H4", {}), ("BA", "PI", "H5", {"off": -14})]
fig1 = svg("".join(arrow(a, b, l, **kw) for a, b, l, kw in paths1), "Proposed conceptual framework with hypotheses H1a to H5")

paths2 = [("FC", "BE", "(n.s.)", {"ns": True, "italic": False}), ("UG", "BE", "0.24*", {"pos": 0.8, "off": -14}),
          ("FC", "BA", "0.38*", {"pos": 0.72, "off": 14}), ("UG", "BA", "0.29*", {}), ("BA", "BE", "0.62*", {"off": -14}),
          ("BE", "PI", "0.32*", {}), ("BA", "PI", "0.60*", {"off": -14})]
fig2 = svg("".join(arrow(a, b, l, **kw) for a, b, l, kw in paths2), "Standardised path estimates of the structural model")

here = Path(__file__).parent
(here / "schivinski-dabrowski-2016-model.svg").write_text(fig1)
(here / "schivinski-dabrowski-2016-estimates.svg").write_text(fig2)
print("written")
