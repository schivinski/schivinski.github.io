"""Figure for Baxter, Czarnecka, Schivinski & Massaro (2022, PLOS ONE 17(10), e0273927): Study 3 attitude towards
the ad by leaflet, respondent gender and dominant gender role identity (observed means from Table 6 of the article)."""
from pathlib import Path

INK, MUTED, GRID = "#15203b", "#5b6476", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
SERIES = [("Masculine men", "#8a5a00"), ("Feminine men", "#d0a24f"),
          ("Masculine women", "#5b6476"), ("Feminine women", "#a7adb8")]
# leaflet: (masc M, fem M, masc F, fem F); n per cell in Table 6
LEAFLETS = [("Male doctor,", "agentic wording", (6.13, 4.42, 4.69, 5.27)),
            ("Male doctor,", "communal wording", (3.38, 5.34, 6.11, 6.21)),
            ("Female doctor,", "agentic wording", (5.80, 6.04, 4.96, 5.46)),
            ("Female doctor,", "communal wording", (3.65, 5.36, 6.10, 6.22))]


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 520
    x0, y0, pw, ph = 80, 90, 850, 320
    lo, hi = 1, 7
    Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
    o = []
    for k, (lab, c) in enumerate(SERIES):
        lx = x0 + k * 215
        o.append(f'<rect x="{lx}" y="24" width="16" height="16" fill="{c}"/>')
        o.append(t(lx + 24, 33, lab, size=13.5, anchor="start"))
    for v in range(lo, hi + 1):
        o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
        o.append(t(x0 - 8, Y(v), str(v), size=12, col=MUTED, anchor="end"))
    slot = pw / len(LEAFLETS)
    bw = 38
    for i, (l1, l2, vals) in enumerate(LEAFLETS):
        cx = x0 + slot * (i + 0.5)
        for k, v in enumerate(vals):
            bx = cx + (k - 2) * (bw + 5) + 2.5
            o.append(f'<rect x="{bx:.1f}" y="{Y(v):.1f}" width="{bw}" height="{Y(lo) - Y(v):.1f}" fill="{SERIES[k][1]}">'
                     f'<title>{l1} {l2}, {SERIES[k][0]}: {v:.2f}</title></rect>')
            o.append(t(bx + bw / 2, Y(v) - 10, f"{v:.2f}", size=11.5, col=INK if k == 0 else MUTED,
                       weight="600" if k == 0 and v < 4 else "400"))
        o.append(t(cx, Y(lo) + 18, l1, size=13))
        o.append(t(cx, Y(lo) + 35, l2, size=13))
    o.append(f'<line x1="{x0}" y1="{Y(lo)}" x2="{x0 + pw}" y2="{Y(lo)}" stroke="{INK}"/>')
    o.append(f'<text transform="translate(28,{y0 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Attitude towards the ad (mean)</text>')
    o.append(t(x0, H - 22, "Study 3, n = 599 UK adults; observed means from Table 6 of the article.", size=12.5,
               col=MUTED, anchor="start"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Attitude towards '
            f'four walking leaflets by respondent gender and gender role identity: masculine men rate both communal-'
            f'wording leaflets low (3.38 and 3.65) while all other groups rate every leaflet positively" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("baxter-et-al-2022-gendered-wording-attitude.svg").write_text(svg())
print("written")
