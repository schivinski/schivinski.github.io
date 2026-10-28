"""Draw Figure 1 and Appendices C-H of Czarnecka & Schivinski (2019, Journal of Global Marketing) as SVG.
Figure 1 estimates are as printed in the article. The simple-slope panels are redrawn from Appendices C-H
(line end points read from the published plots; no values are labelled)."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=9):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def line(x1, y1, x2, y2, *, col=INK, dashed=False, w=1.5, arrow=True):
    ang = math.atan2(y2 - y1, x2 - x1)
    dash = ' stroke-dasharray="5 4"' if dashed else ""
    end = (x2 - 7 * math.cos(ang), y2 - 7 * math.sin(ang)) if arrow else (x2, y2)
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{end[0]:.1f}" y2="{end[1]:.1f}" stroke="{col}" stroke-width="{w}"{dash}/>'
            + (head(x2, y2, ang, col) if arrow else ""))


def text(x, y, t, *, size=12.5, col=INK, weight="400", anchor="middle", italic=False, halo=True):
    st = ' font-style="italic"' if italic else ""
    h = ' stroke="#ffffff" stroke-width="4" stroke-linejoin="round" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}"{st} fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


class Node:
    def __init__(self, cx, cy, rx, ry, lines, shape="ellipse", fill="#ffffff", size=13):
        self.cx, self.cy, self.rx, self.ry, self.lines, self.shape, self.fill, self.size = cx, cy, rx, ry, lines, shape, fill, size

    def edge(self, tx, ty):
        dx, dy = tx - self.cx, ty - self.cy
        if self.shape == "ellipse":
            k = 1 / math.sqrt((dx / self.rx) ** 2 + (dy / self.ry) ** 2)
        else:
            k = min(self.rx / abs(dx) if dx else 1e9, self.ry / abs(dy) if dy else 1e9)
        return self.cx + dx * k, self.cy + dy * k

    def svg(self):
        if self.shape == "ellipse":
            s = (f'<ellipse cx="{self.cx}" cy="{self.cy}" rx="{self.rx}" ry="{self.ry}" fill="{self.fill}" '
                 f'stroke="{INK}" stroke-width="1.6"/>')
        else:
            s = (f'<rect x="{self.cx - self.rx}" y="{self.cy - self.ry}" width="{2 * self.rx}" height="{2 * self.ry}" '
                 f'rx="3" fill="{self.fill}" stroke="{INK}" stroke-width="1.6"/>')
        y0 = self.cy - (len(self.lines) - 1) * 8
        for i, t in enumerate(self.lines):
            s += text(self.cx, y0 + i * 16, t, size=self.size, halo=False)
        return s


def path(a, b, **kw):
    x1, y1 = a.edge(b.cx, b.cy)
    x2, y2 = b.edge(a.cx, a.cy)
    return line(x1, y1, x2, y2, **kw), (x1, y1, x2, y2)


def fig1() -> str:
    W, H = 960, 600
    AG = Node(330, 300, 62, 34, ["AGCC"], fill="#fbf6ec", size=15)
    dims = [
        ("Cosmopolitanism", 330, 52, "λ = 0.19**", False),
        ("Exposure to marketing|activities", 168, 92, "λ = 0.19*", False),
        ("English language|usage and exposure", 82, 182, "λ = 0.22**", False),
        ("Social interactions", 72, 300, "λ = 0.32***", False),
        ("Global mass media|exposure", 92, 418, "λ = 0.68***", False),
        ("Openness to and desire|to emulate GCC", 176, 516, "n.s.", True),
        ("Self-identification|with GCC", 340, 548, "λ = 0.50***", False),
    ]
    IB = Node(640, 150, 70, 32, ["Impulsive", "buying"])
    AT = Node(640, 410, 82, 34, ["Attitude towards", "advertising in general"], size=12.5)
    BE = Node(600, 540, 66, 24, ["Beliefs about", "advertising"], shape="rect", size=12.5)
    CT = Node(870, 280, 64, 34, ["Controls:", "age, gender,", "income"], shape="rect", size=12)
    b = []
    for label, x, y, lam, ns in dims:
        n = Node(x, y, 74, 26, label.split("|"), size=11.5)
        s, (x1, y1, x2, y2) = path(AG, n, col=GREY if ns else INK, dashed=ns)
        b.append(s)
        b.append(text((x1 + x2) / 2, (y1 + y2) / 2, lam, size=11.5, col=MUTED if ns else INK))
        b.append(n.svg())
    s, (x1, y1, x2, y2) = path(AG, IB, w=1.8); b.append(s)
    mx, my = 0.55 * x1 + 0.45 * x2, 0.55 * y1 + 0.45 * y2
    b.append(text(mx - 6, my - 14, "β = 0.24**", weight="600"))
    s, (x1b, y1b, x2b, y2b) = path(AG, AT, w=1.8); b.append(s)
    b.append(text((x1b + x2b) / 2 + 4, (y1b + y2b) / 2 + 16, "β = 0.37***", weight="600"))
    # moderation arrows onto the AGCC -> impulsive buying path
    tx, ty = 0.4 * x1 + 0.6 * x2, 0.4 * y1 + 0.6 * y2
    b.append(line(AT.cx - 30, AT.cy - AT.ry, tx + 6, ty + 4, col=ACC, dashed=True))
    b.append(text(AT.cx - 92, (AT.cy - AT.ry + ty) / 2 + 24, "unst. β = −1.49**", col=ACC, weight="600", size=12))
    b.append(line(BE.cx - 40, BE.cy - BE.ry, tx - 4, ty + 6, col=ACC, dashed=True))
    lines = ["Beliefs (unst. β):", "hedonic −2.53***", "social image −0.77*", "information −1.15**",
             "economic −2.16**", "deceptive 3.42**", "materialism n.s."]
    for i, t in enumerate(lines):
        b.append(text(700, 478 + i * 15, t, size=11.5, col=ACC, anchor="start", weight="600" if i == 0 else "400"))
    # controls (one box; coefficients listed beside each arrow)
    s1, (a1, a2, a3, a4) = path(CT, IB, w=1.3); b.append(s1)
    for i, t in enumerate(["age −0.30***", "gender 0.16***", "income 0.09*"]):
        b.append(text(800, 196 + i * 15, t, size=11.5, anchor="start"))
    s1, (a1, a2, a3, a4) = path(CT, AT, w=1.3); b.append(s1)
    for i, t in enumerate(["age −0.11*", "gender n.s.", "income −0.09*"]):
        b.append(text(800, 352 + i * 15, t, size=11.5, anchor="start"))
    b.append(text(IB.cx, IB.cy - IB.ry - 14, "R² = 0.16***", size=11.5, col=MUTED))
    b.append(text(AT.cx, AT.cy + AT.ry + 14, "R² = 0.17***", size=11.5, col=MUTED))
    for n in (AG, IB, AT, BE, CT):
        b.append(n.svg())
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Model of acculturation '
            f'to global consumer culture, impulsive buying, and attitudes towards and beliefs about advertising" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(b)}</svg>\n')


# Mean impulsive buying at low and high AGCC for low / average / high levels of each moderator
# (read from the end points of the published plots in Appendices C-H)
PANELS = [
    ("C. Attitude towards advertising in general", {"Low": (-0.50, 0.18), "Average": (-0.16, 0.24), "High": (0.19, 0.29)}),
    ("D. Beliefs: hedonic attributes", {"Low": (-0.47, 0.34), "Average": (-0.16, 0.28), "High": (0.14, 0.22)}),
    ("E. Beliefs: role in creating social image", {"Low": (-0.37, 0.26), "Average": (-0.19, 0.25), "High": (-0.01, 0.25)}),
    ("F. Beliefs: information role", {"Low": (-0.41, 0.22), "Average": (-0.17, 0.24), "High": (0.06, 0.26)}),
    ("G. Beliefs: advertising is good for the economy", {"Low": (-0.48, 0.23), "Average": (-0.15, 0.25), "High": (0.18, 0.27)}),
    ("H. Beliefs: deceptive role", {"Low": (0.16, 0.27), "Average": (-0.16, 0.25), "High": (-0.47, 0.23)}),
]
STYLE = {"High": ("", 2.4, INK), "Average": ("7 4", 2.2, INK), "Low": ("2 3", 2.2, MUTED)}


def slopes() -> str:
    W, H = 960, 650
    pw, ph = 250, 200
    lo, hi = -0.6, 0.4
    out = []
    for k, (title, lines) in enumerate(PANELS):
        col, row = k % 3, k // 3
        x0, y0 = 80 + col * 300, 50 + row * 320
        X = lambda i: x0 + 30 + i * (pw - 60)
        Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
        out.append(text(x0 + pw / 2, y0 - 22, title, size=12.5, weight="600", halo=False))
        for v in (-0.6, -0.4, -0.2, 0.0, 0.2, 0.4):
            out.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="#eceef2"/>')
            out.append(text(x0 - 6, Y(v), f"{v:.1f}".replace("-", "−"), size=11, col=MUTED, anchor="end", halo=False))
        out.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}"/>'
                   f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}"/>')
        out.append(text(X(0), y0 + ph + 16, "Low AGCC", size=11.5, halo=False))
        out.append(text(X(1), y0 + ph + 16, "High AGCC", size=11.5, halo=False))
        for lvl, (a, z) in lines.items():
            dash, w, c = STYLE[lvl]
            d = f' stroke-dasharray="{dash}"' if dash else ""
            out.append(f'<line x1="{X(0):.1f}" y1="{Y(a):.1f}" x2="{X(1):.1f}" y2="{Y(z):.1f}" stroke="{c}" '
                       f'stroke-width="{w}" stroke-linecap="round"{d}/>')
    out.append(f'<text transform="translate(24,{50 + 320 + 100}) rotate(-90)" font-size="12.5" fill="{MUTED}" '
               f'text-anchor="middle">Mean impulsive buying</text>')
    out.append(f'<text transform="translate(24,{150}) rotate(-90)" font-size="12.5" fill="{MUTED}" '
               f'text-anchor="middle">Mean impulsive buying</text>')
    lx = 300
    out.append(text(lx - 12, 630, "Level of the moderator:", size=12.5, col=MUTED, anchor="end", halo=False))
    for i, lvl in enumerate(("High", "Average", "Low")):
        dash, w, c = STYLE[lvl]
        d = f' stroke-dasharray="{dash}"' if dash else ""
        x = lx + i * 130
        out.append(f'<line x1="{x}" y1="630" x2="{x + 40}" y2="630" stroke="{c}" stroke-width="{w}"{d}/>')
        out.append(text(x + 48, 630, lvl, size=12.5, col=MUTED, anchor="start", halo=False))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Moderating role of '
            f'attitudes towards and beliefs about advertising on the relation between AGCC and impulsive buying" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(out)}</svg>\n')


here = Path(__file__).parent
(here / "czarnecka-schivinski-2019-agcc-model.svg").write_text(fig1())
(here / "czarnecka-schivinski-2019-agcc-moderation.svg").write_text(slopes())
print("written")
