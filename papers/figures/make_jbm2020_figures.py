"""Draw Figure 1 of Schivinski, Langaro, Fernandes & Guzman (2020, Journal of Brand Management) as SVG,
plus a second figure with the standardised estimates from Table 2 of the article."""
import math
from pathlib import Path

INK, MUTED, GREY = "#15203b", "#5b6476", "#9aa3b5"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
W, H = 900, 560

N = {  # name: (cx, cy, rx, ry, lines)
    "FBI": (130, 180, 92, 40, ["Functional", "brand image"]),
    "HBI": (130, 390, 92, 40, ["Hedonic", "brand image"]),
    "OBE": (420, 285, 90, 40, ["Overall brand", "equity"]),
    "CON": (735, 140, 82, 34, ["Consumption"]),
    "CTR": (735, 285, 82, 34, ["Contribution"]),
    "CRE": (735, 430, 82, 34, ["Creation"]),
}
FRAME = (630, 72, 840, 492)          # dashed COBRAs frame: x0, y0, x1, y1
CTRL = (650, 508, 820, 552)          # control variables box


def edge(n, tx, ty):
    cx, cy, rx, ry, _ = N[n]
    dx, dy = tx - cx, ty - cy
    k = 1 / math.sqrt((dx / rx) ** 2 + (dy / ry) ** 2)
    return cx + dx * k, cy + dy * k


def head(x2, y2, ang, col):
    s = 10
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def label(x, y, t, *, italic=True, col=INK, size=13, anchor="middle"):
    st = ' font-style="italic"' if italic else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}"{st} fill="{col}" text-anchor="{anchor}" '
            f'dominant-baseline="middle" stroke="#ffffff" stroke-width="4" stroke-linejoin="round" '
            f'paint-order="stroke">{t}</text>')


def arrow(a, b, t="", *, off=-12, pos=0.5, dashed=False, ns=False, italic=True):
    bx, by = N[b][:2]
    ax, ay = N[a][:2]
    x1, y1 = edge(a, bx, by)
    x2, y2 = edge(b, ax, ay)
    ang = math.atan2(y2 - y1, x2 - x1)
    x2, y2 = x2 - 3 * math.cos(ang), y2 - 3 * math.sin(ang)
    col = GREY if ns else INK
    dash = ' stroke-dasharray="6 5"' if dashed else ""
    out = (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 8 * math.cos(ang):.1f}" y2="{y2 - 8 * math.sin(ang):.1f}" '
           f'stroke="{col}" stroke-width="1.7"{dash}/>' + head(x2, y2, ang, col))
    if t:
        mx, my = x1 + (x2 - x1) * pos, y1 + (y2 - y1) * pos
        out += label(mx - math.sin(ang) * off, my + math.cos(ang) * off, t, italic=italic)
    return out


def poly_arrow(points, t, lx, ly, *, dashed=False, italic=True, col=INK):
    pts = " ".join(f"{x},{y}" for x, y in points)
    dash = ' stroke-dasharray="6 5"' if dashed else ""
    (xa, ya), (xb, yb) = points[-2], points[-1]
    ang = math.atan2(yb - ya, xb - xa)
    short = points[:-1] + [(xb - 8 * math.cos(ang), yb - 8 * math.sin(ang))]
    pts = " ".join(f"{x:.1f},{y:.1f}" for x, y in short)
    return (f'<polyline points="{pts}" fill="none" stroke="{col}" stroke-width="1.7"{dash}/>' + head(xb, yb, ang, col)
            + (label(lx, ly, t, italic=italic) if t else ""))


def nodes():
    out = []
    x0, y0, x1, y1 = FRAME
    out.append(f'<rect x="{x0}" y="{y0}" width="{x1 - x0}" height="{y1 - y0}" fill="none" stroke="{INK}" '
               f'stroke-width="1.4" stroke-dasharray="4 4"/>')
    out.append(f'<text x="{(x0 + x1) / 2}" y="{y0 + 20}" font-size="14" font-weight="600" fill="{INK}" '
               f'text-anchor="middle" letter-spacing="0.04em">AIRBNB COBRAs</text>')
    for n, (cx, cy, rx, ry, lines) in N.items():
        out.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="#ffffff" stroke="{INK}" stroke-width="1.8"/>')
        ys = cy - (len(lines) - 1) * 9
        for i, t in enumerate(lines):
            out.append(f'<text x="{cx}" y="{ys + i * 18}" font-size="15" fill="{INK}" text-anchor="middle" '
                       f'dominant-baseline="middle">{t}</text>')
    return "".join(out)


def ctrl(lines):
    x0, y0, x1, y1 = CTRL
    out = [f'<rect x="{x0}" y="{y0}" width="{x1 - x0}" height="{y1 - y0}" fill="#ffffff" stroke="{INK}" stroke-width="1.4"/>']
    ys = (y0 + y1) / 2 - (len(lines) - 1) * 7.5
    for i, t in enumerate(lines):
        st = ' font-style="italic"' if i == 0 else ""
        out.append(f'<text x="{(x0 + x1) / 2}" y="{ys + i * 15}" font-size="12"{st} fill="{INK}" text-anchor="middle" '
                   f'dominant-baseline="middle">{t}</text>')
    # arrow up into the frame
    out.append(f'<line x1="{(x0 + x1) / 2}" y1="{y0}" x2="{(x0 + x1) / 2}" y2="{FRAME[3] + 9}" stroke="{INK}" stroke-width="1.7"/>')
    out.append(head((x0 + x1) / 2, FRAME[3] + 1, -math.pi / 2, INK))
    return "".join(out)


def svg(body, title, height=H):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {height}" role="img" aria-label="{title}" '
            f'font-family="{FONT}"><rect width="{W}" height="{height}" fill="#ffffff"/>{body}{nodes()}</svg>\n')


def model(est):
    b = []
    fx, fy = N["FBI"][:2]
    hx, hy = N["HBI"][:2]
    top, bottom = 40, 530 if not est else 530
    # direct paths c (H1 top, H2 bottom) into the COBRAs frame
    c1 = "Direct: n.s. on all three" if est else "cH1"
    c2 = "Direct: .31***, .32***, .33***" if est else "cH2"
    b.append(poly_arrow([(fx, fy - 40), (fx, top), (735, top), (735, FRAME[1])], c1, 430, top - 12,
                        italic=not est, col=GREY if est else INK))
    b.append(poly_arrow([(hx, hy + 40), (hx, 522), (600, 522), (600, 470), (FRAME[0], 470)], c2, 360, 522 + 13,
                        italic=not est))
    # indirect (c') dashed arrows into the frame
    for n, y, t in (("FBI", fy, "c’H3"), ("HBI", hy, "c’H4")):
        x1 = N[n][0] + N[n][2]
        if est:
            t = "Indirect: .26***, .16***, .13***" if n == "FBI" else "Indirect: .06*, .04*, .03†"
        b.append(f'<line x1="{x1}" y1="{y}" x2="{FRAME[0] - 9}" y2="{y}" stroke="{INK}" stroke-width="1.4" stroke-dasharray="6 5"/>'
                 + head(FRAME[0] - 1, y, 0, INK) + label((x1 + FRAME[0]) / 2 + (40 if est else 0), y - 13, t, italic=not est,
                                                         size=12 if est else 13))
    a = ("a1", "a2") if not est else (".67***", ".15*")
    b.append(arrow("FBI", "OBE", a[0], off=-13, pos=0.55, italic=not est))
    b.append(arrow("HBI", "OBE", a[1], off=13, pos=0.55, italic=not est))
    bb = ("b1", "b2", "b3") if not est else (".22***", ".19*", ".18*")
    b.append(arrow("OBE", "CON", bb[0], off=-12, pos=0.45, italic=not est))
    b.append(arrow("OBE", "CTR", bb[1], off=-12, pos=0.45, italic=not est))
    b.append(arrow("OBE", "CRE", bb[2], off=12, pos=0.45, italic=not est))
    return "".join(b)


here = Path(__file__).parent
fig1 = svg(model(False) + ctrl(["Control variables:", "Gender · Age", "Social media usage"]),
           "Conceptual model: overall brand equity mediating Airbnb brand image and COBRAs")
fig2 = svg(model(True) + ctrl(["Control variables:", "Age, social media usage", "(see Table 2)"]),
           "Standardised estimates for the structural and mediation models")
(here / "schivinski-et-al-2020-airbnb-model.svg").write_text(fig1)
(here / "schivinski-et-al-2020-airbnb-estimates.svg").write_text(fig2)
print("written")
