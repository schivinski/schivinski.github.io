"""Figure for Schivinski & Łukasik (2014, Prace Naukowe Uniwersytetu Ekonomicznego we Wrocławiu 337, 162-173, in
Polish): the conceptual model (Figure 1 of the article) with the standardised path estimates for women and men from
Table 3. Labels translated from Polish."""
import math
from pathlib import Path

INK, MUTED, W_COL, M_COL = "#15203b", "#5b6476", "#8a5a00", "#3c5a80"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x, y, ang, col=INK):
    s = 9
    p1 = (x - s * math.cos(ang - 0.38), y - s * math.sin(ang - 0.38))
    p2 = (x - s * math.cos(ang + 0.38), y - s * math.sin(ang + 0.38))
    return f'<polygon points="{x:.1f},{y:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2):
    ang = math.atan2(y2 - y1, x2 - x1)
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{INK}" stroke-width="1.6"/>' + head(x2, y2, ang))


def text(x, y, t, size=13, col=INK, weight="400", anchor="middle", halo=False):
    h = ' stroke="#ffffff" stroke-width="5" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


def ell(cx, cy, lines, fill="#ffffff", rx=118, ry=42):
    s = f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(text(cx, y0 + i * 17, t, 13.5, weight="600") for i, t in enumerate(lines))


def est(x, y, sign, w, m):
    return (text(x, y - 10, f"({sign}) women {w}", 13, W_COL, "600", halo=True)
            + text(x, y + 9, f"men {m}", 13, M_COL, "600", halo=True))


def svg() -> str:
    W, H = 960, 520
    o = []
    SI, PR, PI, PRI = (190, 80), (470, 230), (800, 230), (190, 390)
    o.append(arrow(SI[0] + 70, SI[1] + 32, PR[0] - 80, PR[1] - 36))
    o.append(arrow(PRI[0] + 70, PRI[1] - 32, PR[0] - 80, PR[1] + 36))
    o.append(arrow(PR[0] + 118, PR[1], PI[0] - 118, PI[1]))
    o.append(arrow(PRI[0] + 118, PRI[1] - 6, PI[0] - 70, PI[1] + 36))
    o.append(est(222, 152, "−", "−0.51", "−0.40"))
    o.append(est(205, 300, "−", "−0.32", "−0.44"))
    o.append(est(635, 196, "−", "−0.60", "−0.55"))
    o.append(est(610, 345, "+", "0.32", "0.42"))
    o.append(ell(*SI, ["Store image"]))
    o.append(ell(*PR, ["Store brand", "perceived risk"], "#fbf6ec"))
    o.append(ell(*PI, ["Store brand", "purchase intention"], "#fbf6ec"))
    o.append(ell(*PRI, ["Store brand", "price image"]))
    o.append(text(20, H - 40, "Standardised estimates from Table 3 of the article (women n = 323, men n = 259); all paths "
                  "significant in both groups. Expected sign of each path in brackets.", 12, MUTED, anchor="start"))
    o.append(text(20, H - 20, "Store image: store layout and service; perceived risk: functional and financial; price "
                  "image: relative price level and perceived benefits. Labels translated from Polish.", 12, MUTED,
                  anchor="start"))
    aria = ("Conceptual model: store image and store brand price image reduce store brand perceived risk; perceived "
            "risk reduces and price image increases store brand purchase intention; standardised estimates for women "
            "and men")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("schivinski-lukasik-2014-gender-store-brands-model.svg").write_text(svg())
print("written")
