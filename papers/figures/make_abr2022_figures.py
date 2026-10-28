"""Redraw Figure 1 of Rozgonjuk, Pontes, Schivinski & Montag (2022, Addictive Behaviors Reports 15, 100426) as SVG:
estimated marginal means with 95% CIs by year, controlled for age and gender (values read from the published plot)."""
from pathlib import Path

INK, MUTED, ACC, GRID = "#15203b", "#5b6476", "#8a5a00", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
# (panel title, axis min, axis max, tick step, {year: (mean, lower, upper)})
PANELS = [
    ("Gaming Disorder (GDT, 4–20)", 7, 13, 2, {2019: (8.95, 8.44, 9.40), 2020: (10.65, 10.16, 11.14), 2021: (11.21, 10.72, 11.66)}),
    ("Internet Gaming Disorder (IGDS9-SF, 9–45)", 16, 26, 2, {2019: (18.29, 17.27, 19.28), 2020: (21.89, 20.90, 22.85), 2021: (22.82, 21.83, 23.77)}),
    ("Dysfunctional family harmony (FHS-5, 5–25)", 10, 16, 2, {2019: (13.15, 12.48, 13.81), 2020: (13.46, 12.81, 14.12), 2021: (13.04, 12.38, 13.69)}),
    ("Loneliness (ULS-3, 3–12)", 4, 10, 2, {2019: (7.13, 6.78, 7.47), 2020: (7.34, 6.97, 7.68), 2021: (7.47, 7.13, 7.82)}),
]


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 720
    pw, ph = 340, 220
    o = []
    for k, (title, lo, hi, step, pts) in enumerate(PANELS):
        col, row = k % 2, k // 2
        x0, y0 = 110 + col * 450, 60 + row * 330
        Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
        X = lambda i: x0 + 60 + i * (pw - 120) / 2
        o.append(t(x0, y0 - 28, title, size=14, anchor="start", weight="600"))
        v = lo
        while v <= hi + 1e-9:
            o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
            o.append(t(x0 - 8, Y(v), f"{v:g}", size=12, col=MUTED, anchor="end"))
            v += step
        o.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}"/>'
                 f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}"/>')
        hl = k < 2  # gaming scores rose significantly
        for i, (yr, (m, l, u)) in enumerate(pts.items()):
            x = X(i)
            c = ACC if hl else INK
            o.append(f'<line x1="{x:.1f}" y1="{Y(l):.1f}" x2="{x:.1f}" y2="{Y(u):.1f}" stroke="{c}" stroke-width="1.8"/>')
            for yy in (l, u):
                o.append(f'<line x1="{x - 9:.1f}" y1="{Y(yy):.1f}" x2="{x + 9:.1f}" y2="{Y(yy):.1f}" stroke="{c}" stroke-width="1.8"/>')
            o.append(f'<circle cx="{x:.1f}" cy="{Y(m):.1f}" r="6" fill="#ffffff" stroke="{c}" stroke-width="2"/>')
            o.append(t(x, y0 + ph + 18, str(yr), size=12.5))
    o.append(f'<text transform="translate(30,{H / 2 - 10}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Estimated marginal mean (95% CI)</text>')
    o.append(t(W / 2, H - 14, "Survey year (2019 before the pandemic; 2020 and 2021 during it)", size=13, col=MUTED))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Estimated marginal '
            f'means of gaming disorder, internet gaming disorder, dysfunctional family harmony and loneliness in 2019, 2020 '
            f'and 2021: both gaming disorder scores rose after 2019, while family harmony and loneliness stayed level" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("rozgonjuk-et-al-2022-gaming-covid-means.svg").write_text(svg())
print("written")
