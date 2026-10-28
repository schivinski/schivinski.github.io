"""Figure for Łukasik & Schivinski (2017, Annales UMCS sectio H Oeconomia 51(2), 169-175): the conceptual model of
the antecedents of consumer-based store brand equity (Figure 1). Path labels follow the hypotheses as worded in the
text (H3a and H4a = perceived quality; H3b and H4b = associations)."""
import math
from pathlib import Path

INK, MUTED, ACC, NEG = "#15203b", "#5b6476", "#8a5a00", "#b5562f"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x, y, ang, col):
    s = 9
    p1 = (x - s * math.cos(ang - 0.38), y - s * math.sin(ang - 0.38))
    p2 = (x - s * math.cos(ang + 0.38), y - s * math.sin(ang + 0.38))
    return f'<polygon points="{x:.1f},{y:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, col=INK, dashed=False):
    ang = math.atan2(y2 - y1, x2 - x1)
    d = ' stroke-dasharray="6 4"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="1.6"{d}/>' + head(x2, y2, ang, col))


def text(x, y, t, size=12.5, col=INK, weight="400", anchor="middle", halo=True):
    h = ' stroke="#ffffff" stroke-width="4" paint-order="stroke"' if halo else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle"{h}>{t}</text>')


def ell(cx, cy, lines, fill="#ffffff"):
    s = f'<ellipse cx="{cx}" cy="{cy}" rx="118" ry="42" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(text(cx, y0 + i * 17, t, 13.5, weight="600", halo=False) for i, t in enumerate(lines))


def svg() -> str:
    W, H = 960, 560
    L = [("Store brand", "advertising spend", 80), ("Attitudes toward store", "brand advertisements", 205),
         ("Store brand", "price promotions", 330), ("Store brand", "non-price promotions", 455)]
    R = [("Store brand", "awareness", 80), ("Store brand", "associations", 205), ("Store brand", "perceived quality", 330),
         ("Store brand", "loyalty", 455)]
    LX, RX = 150, 810
    # (source, target, label, sign, label fraction)
    paths = [(0, 0, "H1a (+)", "+", 0.5), (0, 1, "H1b (+)", "+", 0.22), (0, 2, "H1c (+)", "+", 0.22), (0, 3, "H1d (+)", "+", 0.86),
             (1, 0, "H2a (+)", "+", 0.5), (1, 1, "H2b (+)", "+", 0.62), (1, 2, "H2c (+)", "+", 0.30),
             (2, 2, "H3a (−)", "−", 0.5), (2, 1, "H3b (−)", "−", 0.22),
             (3, 2, "H4a (+)", "+", 0.30), (3, 1, "H4b (+)", "+", 0.13)]
    o = []
    for s, t, lab, sign, f in paths:
        y1 = L[s][2] + (t - s) * 7
        y2 = R[t][2] + (s - t) * 7
        x1, x2 = LX + 118, RX - 118
        col = NEG if sign == "−" else INK
        o.append(arrow(x1, y1, x2, y2, col))
        o.append(text(x1 + (x2 - x1) * f, y1 + (y2 - y1) * f, lab, 12, NEG if sign == "−" else ACC, "600"))
    for a, b, y in L:
        o.append(ell(LX, y, [a, b]))
    for a, b, y in R:
        o.append(ell(RX, y, [a, b], "#fbf6ec"))
    o.append(text(LX, 22, "Advertising and sales promotion", 13, MUTED, "600", halo=False))
    o.append(text(RX, 22, "Store brand equity (Aaker, 1991)", 13, MUTED, "600", halo=False))
    o.append(text(20, H - 34, "Hypothesised paths (red: negative), based on Buil et al. (2013), Villarejo-Ramos and "
                  "Sánchez-Franco (2005) and Aaker (1991).", 12, MUTED, anchor="start", halo=False))
    o.append(text(20, H - 14, "The model is to be compared across three retail formats: discount stores, hypermarkets "
                  "and delicatessens.", 12, MUTED, anchor="start", halo=False))
    aria = ("Conceptual model: store brand advertising spend, attitudes toward store brand advertisements, price "
            "promotions and non-price promotions as antecedents of store brand awareness, associations, perceived "
            "quality and loyalty")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("lukasik-schivinski-2017-store-brand-equity-model.svg").write_text(svg())
print("written")
