"""Draw Figures 1 and 2 of Czarnecka, Schivinski & Baxter (2026, Journal of Product & Brand Management) as SVG.
* conceptual model as published (Figure 1), and the same model with the estimates printed in Table 2;
* Figure 2, the interaction plot, redrawn (line end points read from the published plot; no values labelled)."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=9):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def line(x1, y1, x2, y2, *, col=INK, dashed=False, w=1.6, arrow=True):
    ang = math.atan2(y2 - y1, x2 - x1)
    dash = ' stroke-dasharray="5 4"' if dashed else ""
    end = (x2 - 7 * math.cos(ang), y2 - 7 * math.sin(ang)) if arrow else (x2, y2)
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{end[0]:.1f}" y2="{end[1]:.1f}" stroke="{col}" stroke-width="{w}"{dash}/>'
            + (head(x2, y2, ang, col) if arrow else ""))


def poly(pts, *, col=INK, dashed=True, w=1.5):
    dash = ' stroke-dasharray="5 4"' if dashed else ""
    (xa, ya), (xb, yb) = pts[-2], pts[-1]
    ang = math.atan2(yb - ya, xb - xa)
    body = pts[:-1] + [(xb - 7 * math.cos(ang), yb - 7 * math.sin(ang))]
    p = " ".join(f"{x:.1f},{y:.1f}" for x, y in body)
    return f'<polyline points="{p}" fill="none" stroke="{col}" stroke-width="{w}"{dash}/>' + head(xb, yb, ang, col)


def text(x, y, t, *, size=13, col=INK, weight="400", anchor="middle", italic=False, halo=True, hw=4):
    st = ' font-style="italic"' if italic else ""
    h = f' stroke="#ffffff" stroke-width="{hw}" stroke-linejoin="round" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}"{st} fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


class Node:
    def __init__(self, cx, cy, rx, ry, lines, shape="ellipse", fill="#ffffff", size=14):
        self.cx, self.cy, self.rx, self.ry, self.lines, self.shape, self.fill, self.size = cx, cy, rx, ry, lines, shape, fill, size

    def edge(self, tx, ty):
        dx, dy = tx - self.cx, ty - self.cy
        if self.shape == "ellipse":
            k = 1 / math.sqrt((dx / self.rx) ** 2 + (dy / self.ry) ** 2)
        else:
            k = min(self.rx / abs(dx) if dx else 1e9, self.ry / abs(dy) if dy else 1e9)
        return self.cx + dx * k, self.cy + dy * k

    def y_at(self, x, top=True):
        d = self.ry * math.sqrt(max(0.0, 1 - ((x - self.cx) / self.rx) ** 2))
        return self.cy - d if top else self.cy + d

    def svg(self):
        if self.shape == "ellipse":
            s = (f'<ellipse cx="{self.cx}" cy="{self.cy}" rx="{self.rx}" ry="{self.ry}" fill="{self.fill}" '
                 f'stroke="{INK}" stroke-width="1.6"/>')
        else:
            s = (f'<rect x="{self.cx - self.rx}" y="{self.cy - self.ry}" width="{2 * self.rx}" height="{2 * self.ry}" '
                 f'rx="3" fill="{self.fill}" stroke="{INK}" stroke-width="1.6"/>')
        y0 = self.cy - (len(self.lines) - 1) * 8.5
        for i, t in enumerate(self.lines):
            s += text(self.cx, y0 + i * 17, t, size=self.size, halo=False, weight="600" if self.shape == "ellipse" else "400")
        return s


def model(estimates: bool) -> str:
    W, H = 960, 560
    VI = Node(150, 170, 112, 46, ["Vertical", "individualism"])
    HI = Node(150, 400, 112, 46, ["Horizontal", "individualism"])
    NU = Node(455, 285, 100, 46, ["Need for", "uniqueness"])
    DU = Node(790, 285, 108, 58, ["Desire for unique", "consumer products"])
    AG = Node(640, 118, 70, 38, ["AGCC"], fill="#fbf6ec")
    CT = Node(870, 470, 78, 34, ["Control variables:", "gender, education"], shape="rect", size=12.5)
    b = []
    lab = (lambda h, est: f"{h}: {est}") if estimates else (lambda h, est: h)
    # H1, H2, H3
    s, (x1, y1, x2, y2) = (lambda a, c: (line(*a.edge(c.cx, c.cy), *c.edge(a.cx, a.cy), w=1.8),
                                          (*a.edge(c.cx, c.cy), *c.edge(a.cx, a.cy))))(VI, NU)
    b.append(s); b.append(text((x1 + x2) / 2 + 8, (y1 + y2) / 2 - 16, lab("H1", "β = 0.61***"), weight="600"))
    x1, y1 = HI.edge(NU.cx, NU.cy); x2, y2 = NU.edge(HI.cx, HI.cy)
    b.append(line(x1, y1, x2, y2, w=1.8)); b.append(text((x1 + x2) / 2 + 8, (y1 + y2) / 2 + 18, lab("H2", "β = 0.27***"), weight="600"))
    x1, y1 = NU.edge(DU.cx, DU.cy); x2, y2 = DU.edge(NU.cx, NU.cy)
    b.append(line(x1, y1, x2, y2, w=1.8))
    mx = 640
    b.append(text(mx - 28 if estimates else mx - 30, y1 + 18, lab("H3", "β = 0.89***"), weight="600"))
    # H5: AGCC onto the H3 path
    b.append(line(AG.cx, AG.cy + AG.ry, mx, y1 - 2, col=ACC, dashed=True, w=1.6))
    b.append(text(mx - 10, (AG.cy + AG.ry + y1) / 2, lab("H5", "unst. β = 0.09*") if estimates else "H5",
                  col=ACC, weight="600", anchor="end"))
    if estimates:  # direct effect of AGCC on the outcome (Table 2)
        ax, ay = AG.edge(DU.cx, DU.cy - 30); dx, dy = DU.edge(AG.cx, AG.cy)
        b.append(line(ax, ay, dx, dy, col=GREY, w=1.3))
        b.append(text((ax + dx) / 2 + 12, (ay + dy) / 2 - 6, "β = 0.39***", size=12, col=MUTED, anchor="start"))
    # H4a / H4b: indirect paths drawn as dashed connectors, as in the published figure
    top = 46
    xa = VI.cx - 40
    xt = DU.cx + 55
    b.append(poly([(xa, VI.y_at(xa)), (xa, top), (xt, top), (xt, DU.y_at(xt))], col=MUTED))
    b.append(text(470, top - 1, lab("H4a", "indirect β = 0.54*** (direct 0.09, n.s.)") if estimates else "H4a",
                  col=MUTED, weight="600", hw=10))
    bot = 516
    xb = HI.cx - 40
    xd = DU.cx - 70
    b.append(poly([(xb, HI.y_at(xb, top=False)), (xb, bot), (xd, bot), (xd, DU.y_at(xd, top=False))], col=MUTED))
    b.append(text(440, bot + 1, lab("H4b", "indirect β = 0.24*** (direct −0.08, n.s.)") if estimates else "H4b",
                  col=MUTED, weight="600", hw=10))
    # controls
    cx, cy = CT.cx - 10, CT.cy - CT.ry
    b.append(line(cx, cy, cx, DU.y_at(cx, top=False), w=1.3))
    if estimates:
        b.append(text(cx - 10, (cy + DU.y_at(cx, top=False)) / 2, "gender 0.18**, education n.s.", size=11.5,
                      anchor="end", col=MUTED))
    for n in (VI, HI, NU, DU, AG, CT):
        b.append(n.svg())
    aria = ("Conceptual model: vertical and horizontal individualism increase need for uniqueness, which increases the "
            "desire for unique consumer products; acculturation to global consumer culture moderates the last path")
    if estimates:
        aria += ", with the standardised estimates printed in Table 2"
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(b)}</svg>\n')


# Desire for unique consumer products at low and high need for uniqueness (1 to 5 scale),
# read from the end points of the published Figure 2.
LINES = {"High levels of AGCC": (2.33, 4.39), "Low levels of AGCC": (1.83, 3.40)}
STYLE = {"High levels of AGCC": ("9 6", 3.0, INK), "Low levels of AGCC": ("2 4", 3.0, ACC)}


def interaction() -> str:
    W, H = 900, 560
    x0, y0, pw, ph = 110, 40, 540, 420
    lo, hi = 1, 5
    X = lambda i: x0 + 80 + i * (pw - 160)
    Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
    o = []
    for v in range(1, 6):
        o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="#eceef2"/>')
        o.append(text(x0 - 10, Y(v), str(v), size=13, col=MUTED, anchor="end", halo=False))
    o.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.4"/>'
             f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.4"/>')
    for i, t in enumerate(["Low", "High"]):
        o.append(text(X(i), y0 + ph + 22, f"{t} need for uniqueness", size=13.5, halo=False))
    for k, (a, z) in LINES.items():
        dash, w, c = STYLE[k]
        o.append(f'<line x1="{X(0):.1f}" y1="{Y(a):.1f}" x2="{X(1):.1f}" y2="{Y(z):.1f}" stroke="{c}" '
                 f'stroke-width="{w}" stroke-linecap="round" stroke-dasharray="{dash}"/>')
    o.append(f'<text transform="translate(40,{y0 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Desire for unique consumer products</text>')
    lx, ly = x0 + pw + 40, 150
    for i, k in enumerate(LINES):
        dash, w, c = STYLE[k]
        y = ly + i * 34
        o.append(f'<line x1="{lx}" y1="{y}" x2="{lx + 46}" y2="{y}" stroke="{c}" stroke-width="{w}" stroke-dasharray="{dash}" stroke-linecap="round"/>')
        o.append(text(lx + 56, y, k, size=13.5, anchor="start", halo=False))
    o.append(text(lx, ly + 90, "Interaction: unst. β = 0.09, p = 0.04", size=12.5, col=MUTED, anchor="start", halo=False))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="The rise in desire '
            f'for unique consumer products from low to high need for uniqueness is steeper for consumers high in '
            f'acculturation to global consumer culture than for those low in it" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


here = Path(__file__).parent
(here / "czarnecka-et-al-2026-uniqueness-model.svg").write_text(model(False))
(here / "czarnecka-et-al-2026-uniqueness-model-estimates.svg").write_text(model(True))
(here / "czarnecka-et-al-2026-uniqueness-interaction.svg").write_text(interaction())
print("written")
