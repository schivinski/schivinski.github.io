"""Redraw Figure 1 of Pontes, Schivinski, Kannen & Montag (2022, Social Science & Medicine 296, 114721) as SVG:
average weekly time spent gaming by number of disordered gaming criteria endorsed, for men and women, under the
APA (IGDS9-SF) and WHO (GDT) frameworks. Values are the data labels printed on the published figure."""
from pathlib import Path

INK, MUTED, GRID = "#15203b", "#5b6476", "#eceef2"
MEN, WOMEN = "#15203b", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
PANELS = [
    ("Internet gaming disorder criteria (APA)", list(range(10)),
     [19.18, 24.64, 27.75, 29.95, 32.27, 34.78, 36.53, 38.16, 41.10, 41.00],
     [16.13, 21.83, 24.80, 27.68, 29.80, 31.92, 37.79, 40.01, 47.51, 43.29], 5),
    ("Gaming disorder criteria (WHO)", list(range(5)),
     [19.95, 27.46, 31.42, 34.81, 40.11],
     [17.42, 25.41, 29.65, 34.02, 40.40], 4),
]


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 470
    pw, ph = 370, 300
    lo, hi = 10, 50
    o = []
    o.append(f'<line x1="300" y1="26" x2="330" y2="26" stroke="{MEN}" stroke-width="3"/>')
    o.append(t(338, 26, "Men", anchor="start"))
    o.append(f'<line x1="400" y1="26" x2="430" y2="26" stroke="{WOMEN}" stroke-width="3" stroke-dasharray="7 5"/>')
    o.append(t(438, 26, "Women", anchor="start"))
    for k, (title, xs, men, women, cut) in enumerate(PANELS):
        x0, y0 = 90 + k * 470, 80
        Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
        X = lambda i: x0 + 15 + i * (pw - 30) / (len(xs) - 1)
        o.append(t(x0, y0 - 26, title, size=14, anchor="start", weight="600"))
        for v in range(lo, hi + 1, 10):
            o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
            o.append(t(x0 - 8, Y(v), str(v), size=12, col=MUTED, anchor="end"))
        xc = (X(cut - 1) + X(cut)) / 2 if k == 0 else (X(cut - 1) + X(cut)) / 2
        o.append(f'<rect x="{xc:.1f}" y="{y0}" width="{x0 + pw - xc:.1f}" height="{ph}" fill="#f6efe2"/>')
        o.append(t(x0 + pw - 6, y0 + 12, "disordered gaming range" if k == 0 else "disordered", size=11.5, col="#8a5a00", anchor="end"))
        for v in range(lo, hi + 1, 10):
            o.append(f'<line x1="{xc:.1f}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="#ecdcc0"/>')
        o.append(f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}"/>')
        for series, col, dash in ((men, MEN, ""), (women, WOMEN, ' stroke-dasharray="7 5"')):
            pts = " ".join(f"{X(i):.1f},{Y(v):.1f}" for i, v in enumerate(series))
            o.append(f'<polyline points="{pts}" fill="none" stroke="{col}" stroke-width="2.6"{dash}/>')
            for i, v in enumerate(series):
                o.append(f'<circle cx="{X(i):.1f}" cy="{Y(v):.1f}" r="3.6" fill="{col}"><title>{v:.2f} h</title></circle>')
        for i in xs:
            o.append(t(X(i), y0 + ph + 16, str(i), size=12.5))
        o.append(t(x0 + pw / 2, y0 + ph + 40, "Number of criteria endorsed", size=13, col=MUTED))
    o.append(f'<text transform="translate(30,{80 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Weekly time spent gaming (hours)</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Average weekly '
            f'gaming hours rise steadily with the number of disordered gaming criteria endorsed, from about 16 to 20 '
            f'hours with no criteria to about 40 hours or more at the highest levels, for both men and women and under '
            f'both the APA and WHO frameworks" font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>'
            f'{"".join(o)}</svg>\n')


Path(__file__).with_name("pontes-et-al-2022-gaming-time-criteria.svg").write_text(svg())
print("written")
