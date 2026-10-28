"""Model of Park, Schivinski, Duns-McKay, Heeren & McLachlan (2025/online 2023, Journal of Marketing Communications
31(1), 1-20) with the standardised estimates printed in Table 2 of the article (the article has no figure)."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=9):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(a, b, col=INK, w=1.8, dashed=False):
    (x1, y1), (x2, y2) = a, b
    ang = math.atan2(y2 - y1, x2 - x1)
    d = ' stroke-dasharray="5 4"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 7 * math.cos(ang):.1f}" y2="{y2 - 7 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"{d}/>' + head(x2, y2, ang, col))


def text(x, y, t, size=12.5, col=INK, weight="400", anchor="middle"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" fill="{col}" text-anchor="{anchor}" '
            f'dominant-baseline="middle" stroke="#ffffff" stroke-width="4" paint-order="stroke">{t}</text>')


def box(cx, cy, w, h, lines, fill="#ffffff"):
    s = f'<rect x="{cx - w / 2}" y="{cy - h / 2}" width="{w}" height="{h}" rx="22" fill="{fill}" stroke="{INK}" stroke-width="1.6"/>'
    y0 = cy - (len(lines) - 1) * 8.5
    return s + "".join(f'<text x="{cx}" y="{y0 + i * 17:.1f}" font-size="13.5" font-weight="600" fill="{INK}" '
                       f'text-anchor="middle" dominant-baseline="middle">{t}</text>' for i, t in enumerate(lines))


def svg() -> str:
    W, H = 960, 520
    OF, UG = (140, 150), (140, 390)
    EF, SA, RI = (480, 90), (480, 270), (480, 450)
    IN = (820, 270)
    bw, bh, mw = 200, 64, 180
    o = []
    def edge(p, q, w1, w2):
        return ((p[0] + w1 / 2, p[1]), (q[0] - w2 / 2, q[1]))
    paths = [  # (from, to, label, significant, label position t)
        (OF, EF, "0.29***", True, .45), (OF, SA, "0.28***", True, .30), (OF, RI, "0.20***", True, .22),
        (UG, EF, "0.14*", True, .22), (UG, SA, "0.15**", True, .30), (UG, RI, "0.04", False, .45),
    ]
    for p, q, lab, sig, tt in paths:
        a, b = edge(p, q, bw, mw)
        o.append(arrow(a, b, INK if sig else GREY, 1.7 if sig else 1.2, not sig))
        o.append(text(a[0] + (b[0] - a[0]) * tt, a[1] + (b[1] - a[1]) * tt - 2, lab, 12, INK if sig else MUTED))
    for p, lab, sig in ((EF, "0.57***", True), (SA, "0.15***", True), (RI, "0.06", False)):
        a, b = edge(p, IN, mw, bw)
        o.append(arrow(a, b, INK if sig else GREY, 1.9 if sig else 1.2, not sig))
        o.append(text((a[0] + b[0]) / 2, (a[1] + b[1]) / 2 - 12, lab, 12.5, INK if sig else MUTED, "600" if sig else "400"))
    o.append(box(*OF, bw, bh, ["Official source", "social media"], "#fbf6ec"))
    o.append(box(*UG, bw, bh, ["User-generated", "social media"], "#fbf6ec"))
    o.append(box(*EF, mw, 52, ["Vaccine efficacy"]))
    o.append(box(*SA, mw, 52, ["Vaccine safety"]))
    o.append(box(*RI, mw, 52, ["COVID-19 risk", "perception"]))
    o.append(box(*IN, bw, 76, ["Intention to take", "a COVID-19 vaccine"]))
    o.append(text(IN[0], IN[1] + 58, "R² = 0.73", 12, MUTED))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Official and '
            f'user-generated social media communication about vaccines raise perceived vaccine efficacy and safety, '
            f'which raise intention to vaccinate; risk perception and the direct paths are not significant" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("park-et-al-2023-vaccine-intention-model.svg").write_text(svg())
print("written")
