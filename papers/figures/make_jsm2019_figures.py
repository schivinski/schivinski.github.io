"""Draw Figures 1 and 2 of Schivinski, Muntinga, Pontes & Lukasik (2021, Journal of Strategic Marketing) as SVG.

Figure 1: conceptual framework (macro- and micro-relationship perspectives).
Figure 2: parameter estimates for the final structural models.
Every number comes from Figure 2 and Table 1 of the article.
"""
import math
from pathlib import Path

INK, MUTED, GREY = "#15203b", "#5b6476", "#9aa3b5"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


class Panel:
    def __init__(self, nodes, y0=0):
        self.nodes = nodes  # name: (kind, cx, cy, rx, ry, lines)
        self.y0 = y0
        self.parts = []

    # -- geometry
    def edge(self, n, tx, ty):
        kind, cx, cy, rx, ry, _ = self.nodes[n]
        cy += self.y0
        dx, dy = tx - cx, ty - cy
        if kind == "box":
            k = min(rx / abs(dx) if dx else 1e9, ry / abs(dy) if dy else 1e9)
        else:
            k = 1 / math.sqrt((dx / rx) ** 2 + (dy / ry) ** 2)
        return cx + dx * k, cy + dy * k

    def centre(self, n):
        _, cx, cy, *_ = self.nodes[n]
        return cx, cy + self.y0

    # -- drawing
    def label(self, x, y, text, *, size=13, italic=False, col=INK, anchor="middle", weight=None):
        st = ' font-style="italic"' if italic else ""
        wt = f' font-weight="{weight}"' if weight else ""
        self.parts.append(f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}"{st}{wt} fill="{col}" text-anchor="{anchor}" '
                          f'dominant-baseline="middle" stroke="#ffffff" stroke-width="4" stroke-linejoin="round" '
                          f'paint-order="stroke">{text}</text>')

    def arrow(self, a, b, text="", *, ns=False, pos=0.5, off=0.0, size=13, italic=True, dashed=False, start=None):
        bx, by = self.centre(b)
        if start is None:
            ax, ay = self.centre(a)
            x1, y1 = self.edge(a, bx, by)
        else:
            x1, y1 = ax, ay = start
        x2, y2 = self.edge(b, ax, ay)
        ang = math.atan2(y2 - y1, x2 - x1)
        x2, y2 = x2 - 3 * math.cos(ang), y2 - 3 * math.sin(ang)
        col = GREY if ns else INK
        dash = ' stroke-dasharray="6 5"' if (ns or dashed) else ""
        head = 10
        h1 = (x2 - head * math.cos(ang - 0.38), y2 - head * math.sin(ang - 0.38))
        h2 = (x2 - head * math.cos(ang + 0.38), y2 - head * math.sin(ang + 0.38))
        self.parts.append(f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - head * .8 * math.cos(ang):.1f}" '
                          f'y2="{y2 - head * .8 * math.sin(ang):.1f}" stroke="{col}" stroke-width="1.6"{dash}/>'
                          f'<polygon points="{x2:.1f},{y2:.1f} {h1[0]:.1f},{h1[1]:.1f} {h2[0]:.1f},{h2[1]:.1f}" fill="{col}"/>')
        if text:
            mx, my = x1 + (x2 - x1) * pos, y1 + (y2 - y1) * pos
            nx, ny = -math.sin(ang), math.cos(ang)
            self.label(mx + nx * off, my + ny * off, text, size=size, italic=italic, col=MUTED if ns else INK)

    def draw_nodes(self):
        for n, (kind, cx, cy, rx, ry, lines) in self.nodes.items():
            cy += self.y0
            if kind == "box":
                self.parts.append(f'<rect x="{cx - rx}" y="{cy - ry}" width="{2 * rx}" height="{2 * ry}" fill="#ffffff" '
                                  f'stroke="{INK}" stroke-width="1.4"/>')
                size, step = 12, 15
            elif kind == "brands":
                self.parts.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="#ffffff" stroke="{MUTED}" '
                                  f'stroke-width="1.4"/>')
                size, step = 12, 15
            else:
                self.parts.append(f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="#ffffff" stroke="{INK}" '
                                  f'stroke-width="1.8"/>')
                size, step = 14, 17
            ys = cy - (len(lines) - 1) * step / 2
            for i, t in enumerate(lines):
                italic = kind == "box" and t in ("Control variables", "Consumption", "Contribution", "Creation")
                col = MUTED if kind == "brands" else INK
                st = ' font-style="italic"' if italic else ""
                self.parts.append(f'<text x="{cx}" y="{ys + i * step:.1f}" font-size="{size}"{st} fill="{col}" '
                                  f'text-anchor="middle" dominant-baseline="middle">{t}</text>')

    def random_slope(self, a, b, brands="BR"):
        """Dashed arrow from the Brands circle to the structural path a -> b (random part of the mixture model)."""
        bx, by = self.centre(brands)
        x1, y1 = self.edge(a, *self.centre(b))
        x2, y2 = self.edge(b, *self.centre(a))
        # point on the path directly above the Brands circle
        t = (bx - x1) / (x2 - x1)
        px, py = bx, y1 + (y2 - y1) * t
        _, _, _, _, ry, _ = self.nodes[brands]
        self.parts.append(f'<line x1="{bx}" y1="{by - ry:.1f}" x2="{px:.1f}" y2="{py + 4:.1f}" stroke="{MUTED}" '
                          f'stroke-width="1.4" stroke-dasharray="3 4"/>'
                          f'<circle cx="{px:.1f}" cy="{py:.1f}" r="3.2" fill="{MUTED}"/>')


def svg(width, height, title, panels, headings):
    body = []
    for (x, y, t) in headings:
        body.append(f'<text x="{x}" y="{y}" font-size="13" font-weight="600" letter-spacing="0.06em" fill="{MUTED}">{t}</text>')
    for p in panels:
        body.extend(p.parts)
        p_nodes = Panel(p.nodes, p.y0)
        p_nodes.draw_nodes()
        body.extend(p_nodes.parts)
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" role="img" aria-label="{title}" '
            f'font-family="{FONT}"><rect width="{width}" height="{height}" fill="#ffffff"/>{"".join(body)}</svg>\n')


# ---------------------------------------------------------------- macro-relationship panel
MACRO = {
    "AW": ("ell", 88, 46, 76, 26, ["Brand awareness"]),
    "AS": ("ell", 88, 118, 76, 26, ["Brand associations"]),
    "PQ": ("ell", 88, 190, 76, 26, ["Perceived quality"]),
    "BL": ("ell", 88, 262, 76, 26, ["Brand loyalty"]),
    "CBBE": ("ell", 300, 154, 56, 32, ["CBBE"]),
    "COB": ("ell", 530, 154, 62, 32, ["COBRAs"]),
    "CON": ("ell", 770, 64, 66, 26, ["Consumption"]),
    "CTR": ("ell", 770, 154, 66, 26, ["Contribution"]),
    "CRE": ("ell", 770, 244, 66, 26, ["Creation"]),
    "BR": ("brands", 415, 262, 34, 22, ["Brands"]),
}
MACRO_CTRL = ("box", 530, 268, 72, 30, ["Control variables", "Age · Gender", "Social media usage"])

# ---------------------------------------------------------------- micro-relationship panel
MICRO = {
    "AW": ("ell", 76, 170, 70, 30, ["Brand", "awareness"]),
    "AS": ("ell", 250, 56, 74, 30, ["Brand", "associations"]),
    "BL": ("ell", 250, 170, 74, 30, ["Brand", "loyalty"]),
    "PQ": ("ell", 250, 284, 74, 30, ["Perceived", "quality"]),
    "CON": ("ell", 600, 56, 70, 28, ["Consumption"]),
    "CTR": ("ell", 600, 170, 70, 28, ["Contribution"]),
    "CRE": ("ell", 600, 284, 70, 28, ["Creation"]),
    "BR": ("brands", 418, 352, 34, 22, ["Brands"]),
}
MICRO_CTRL = ("box", 790, 170, 70, 34, ["Control variables", "Age · Gender", "Social media usage"])

W = 880


def macro(y0, est):
    nodes = dict(MACRO)
    nodes["CTRL"] = MACRO_CTRL if not est else ("box", 530, 272, 80, 34,
                                                   ["Control variables", "Age: &#946; = &#8722;0.09**", "Gender: n.s.",
                                                    "Social media usage: n.s."])
    p = Panel(nodes, y0)
    lam = {"AW": "&#955; = 0.32***", "AS": "&#955; = 0.85***", "PQ": "&#955; = 0.71***", "BL": "&#955; = 0.93***"}
    for k in ("AW", "AS", "PQ", "BL"):
        p.arrow("CBBE", k, lam[k] if est else "", pos=0.5, off=-11, size=12, italic=False)
    lam2 = {"CON": "&#955; = 0.65***", "CTR": "&#955; = 0.92***", "CRE": "&#955; = 0.77***"}
    for k in ("CON", "CTR", "CRE"):
        p.arrow("COB", k, lam2[k] if est else "", pos=0.45, off={"CON": -14, "CTR": -14, "CRE": 14}[k], size=12, italic=False)
    p.arrow("CBBE", "COB", "&#946; = 0.30***" if est else "H1", pos=0.5, off=-13, italic=not est, size=13)
    p.arrow("CTRL", "COB")
    p.random_slope("CBBE", "COB")
    return p


def micro(y0, est):
    nodes = dict(MICRO)
    if est:
        nodes["CTRL"] = ("box", 790, 170, 74, 112, [
            "Consumption", "Age: &#8722;0.16***", "Gender: &#8722;0.09**", "SM usage: 0.11**", "",
            "Contribution", "Age: &#8722;0.08**", "Gender: &#8722;0.10**", "SM usage: n.s.", "",
            "Creation", "Age: n.s.", "Gender: &#8722;0.14***", "SM usage: n.s."])
    else:
        nodes["CTRL"] = MICRO_CTRL
    p = Panel(nodes, y0)
    if est:
        hier = [("AW", "AS", "&#946; = 0.36***", -12), ("AW", "PQ", "&#946; = 0.35***", 12),
                ("AS", "BL", "0.26***", 0), ("PQ", "BL", "0.52***", 0)]
    else:
        hier = [("AW", "AS", "H2a", -12), ("AW", "PQ", "H2b", 12), ("AS", "BL", "H2c", 0), ("PQ", "BL", "H2d", 0)]
    for a, b, t, off in hier:
        if a == "AW":
            p.arrow(a, b, t, pos=0.5, off=off, italic=not est, size=12)
        else:
            p.arrow(a, b)
            x, y = p.centre(b)
            dy = -48 if a == "AS" else 48
            p.label(x + 30, y + dy, t, size=12, italic=not est, anchor="start")
    # cross paths: (source, target, hypothesis label, estimate, non-significant)
    paths = [
        ("AS", "CON", "H3a", "0.21***", False), ("AS", "CTR", "H3b", "0.13**", False), ("AS", "CRE", "H3c", "n.s.", True),
        ("BL", "CON", "H4a", "0.33***", False), ("BL", "CTR", "H4b", "0.32***", False), ("BL", "CRE", "H4c", "0.32***", False),
        ("PQ", "CON", "H5a", "&#8722;0.13***", False), ("PQ", "CTR", "H5b", "&#8722;0.11*", False),
        ("PQ", "CRE", "H5c", "n.s.", True),
    ]
    # label position along each line (from the source), chosen so labels do not collide
    place = {("AS", "CON"): 0.80, ("AS", "CTR"): 0.80, ("AS", "CRE"): 0.84,
             ("BL", "CON"): 0.66, ("BL", "CTR"): 0.74, ("BL", "CRE"): 0.66,
             ("PQ", "CON"): 0.84, ("PQ", "CTR"): 0.80, ("PQ", "CRE"): 0.80}
    for a, b, h, e, ns in paths:
        p.arrow(a, b, e if est else h, ns=ns and est, pos=place[(a, b)], off=0, italic=not est, size=12)
    for k in ("CON", "CTR", "CRE"):
        p.arrow("CTRL", k)
    # Brands: dashed line up through the cross paths (random part of the mixture model)
    bx, by = p.centre("BR")
    p.parts.append(f'<line x1="{bx}" y1="{by - 22:.1f}" x2="{bx}" y2="{56 + y0:.1f}" stroke="{MUTED}" stroke-width="1.4" '
                   f'stroke-dasharray="3 4"/>')
    for (a, b) in [("AS", "CON"), ("BL", "CTR"), ("PQ", "CRE")]:
        x1, y1 = p.edge(a, *p.centre(b))
        p.parts.append(f'<circle cx="{bx}" cy="{y1:.1f}" r="3.2" fill="{MUTED}"/>')
    return p


def build(est):
    top, gap = 30, 64
    m = macro(top, est)
    hm = 316 if est else 300
    mi = micro(top + hm + gap, est)
    height = top + hm + gap + 390
    heads = [(0, 16, "MACRO-RELATIONSHIP PERSPECTIVE"), (0, top + hm + gap - 14, "MICRO-RELATIONSHIP PERSPECTIVE")]
    title = ("Parameter estimates for the final structural models" if est
             else "Conceptual framework: macro- and micro-relationship perspectives")
    return svg(W, height, title, [m, mi], heads)


here = Path(__file__).parent
(here / "schivinski-et-al-2021-cobras-model.svg").write_text(build(False))
(here / "schivinski-et-al-2021-cobras-estimates.svg").write_text(build(True))
print("written")
