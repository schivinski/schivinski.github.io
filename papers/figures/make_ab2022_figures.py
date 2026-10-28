"""Redraw Figure 1 of Montag, Schivinski, Kannen & Pontes (2022, Addictive Behaviors 134, 107416) as SVG:
mean gaming motive scores in the three gamer groups (values from Table 2 of the article). The published plot starts
its axis at 3; this version starts at 0."""
from pathlib import Path

INK, MUTED, GRID = "#15203b", "#5b6476", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
GROUPS = [("Professional gamers (PG, n = 129)", "#8a5a00"),
          ("Aspiring professionals (NPGwP, n = 646)", "#d0a24f"),
          ("Non-professional gamers (NPGwoP, n = 4,412)", "#a7adb8")]
# motive: (PG, NPGwP, NPGwoP)
MOTIVES = [("Social", (12.41, 12.20, 9.31)), ("Escapism", (11.49, 11.98, 10.19)),
           ("Competition", (12.85, 12.76, 10.28)), ("Coping", (12.17, 12.72, 10.95)),
           ("Skill development", (13.80, 13.61, 10.43)), ("Fantasy", (11.38, 11.11, 9.55)),
           ("Recreation*", (12.53, 12.89, 12.59))]


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 520
    x0, y0, pw, ph = 80, 90, 850, 330
    hi = 16
    Y = lambda v: y0 + ph - v / hi * ph
    o = []
    for k, (lab, c) in enumerate(GROUPS):
        lx = x0 + k * 290
        o.append(f'<rect x="{lx}" y="24" width="16" height="16" fill="{c}"/>')
        o.append(t(lx + 24, 33, lab, size=13, anchor="start"))
    for v in range(0, hi + 1, 2):
        o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
        o.append(t(x0 - 8, Y(v), str(v), size=12, col=MUTED, anchor="end"))
    slot = pw / len(MOTIVES)
    bw = 30
    for i, (name, vals) in enumerate(MOTIVES):
        cx = x0 + slot * (i + 0.5)
        for k, v in enumerate(vals):
            bx = cx + (k - 1.5) * (bw + 4) + 2
            o.append(f'<rect x="{bx:.1f}" y="{Y(v):.1f}" width="{bw}" height="{Y(0) - Y(v):.1f}" fill="{GROUPS[k][1]}">'
                     f'<title>{name.rstrip("*")}, {GROUPS[k][0]}: {v:.2f}</title></rect>')
        o.append(t(cx, Y(0) + 18, name, size=13))
    o.append(f'<line x1="{x0}" y1="{Y(0)}" x2="{x0 + pw}" y2="{Y(0)}" stroke="{INK}"/>')
    o.append(f'<text transform="translate(28,{y0 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Mean motive score (MOGQ)</text>')
    o.append(t(x0, H - 30, "Sum scores: four items (range 4–20) for each motive; *recreation has three items (range 3–15).",
               size=12.5, col=MUTED, anchor="start"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Mean scores on seven '
            f'gaming motives for professional gamers, aspiring professionals and non-professional gamers: the two '
            f'professional-minded groups score alike and above non-professionals on every motive except recreation" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("montag-et-al-2022-pro-gamer-motives.svg").write_text(svg())
print("written")
