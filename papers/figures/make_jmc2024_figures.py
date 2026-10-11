"""Figures for Aleem, Loureiro, Schivinski & Aguiar (2024), Journal of Marketing Communications 30(4).

1. Conceptual model (the article's Figure 1): meme type -> high-status, moderated by iconic (H1) and popular (H2),
   tested in two separate PROCESS Model 1 regressions with the same controls.
2. Conditional effects of meme type (hedonic vs utilitarian) on high-status perceptions at low (-1 SD), mean and high
   (+1 SD) levels of each moderator, with bootstrap 95% CIs. Numbers from Table 3 of the article.
"""
from pathlib import Path

INK, MUTED, AMBER, GREY, RULE = "#15203b", "#5b6476", "#e0a12a", "#9aa3b5", "#dde1e8"
FONT = 'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif"'


def box(x, y, w, h, lines, *, fill="#ffffff", stroke=INK, size=15, weight="400"):
    out = [f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="8" fill="{fill}" stroke="{stroke}" stroke-width="1.8"/>']
    y0 = y + h / 2 - (len(lines) - 1) * 9
    for i, t in enumerate(lines):
        out.append(f'<text x="{x + w / 2}" y="{y0 + i * 18:.0f}" font-size="{size}" font-weight="{weight}" fill="{INK}" '
                   f'text-anchor="middle" dominant-baseline="middle">{t}</text>')
    return "".join(out)


def model() -> str:
    W, H = 720, 330
    p = []
    # main path
    p.append(box(20, 135, 210, 64, ["Type of internet meme", "utilitarian vs hedonic"]))
    p.append(box(490, 135, 210, 64, ["High-status", "perception"]))
    p.append(f'<line x1="230" y1="167" x2="478" y2="167" stroke="{INK}" stroke-width="1.8"/>'
             f'<polygon points="488,167 476,161.5 476,172.5" fill="{INK}"/>')
    # moderators
    p.append(box(275, 22, 170, 46, ["Iconic"], fill="#fdf3df", stroke=AMBER, size=15, weight="600"))
    p.append(box(275, 266, 170, 46, ["Popular"], fill="#fdf3df", stroke=AMBER, size=15, weight="600"))
    for y1, y2, lab, ly in [(68, 158, "H1", 112), (266, 176, "H2", 222)]:
        tip = 158 if y2 == 158 else 176
        head = f"{360},{tip} {354.5},{tip - 11 if y2 == 158 else tip + 11} {365.5},{tip - 11 if y2 == 158 else tip + 11}"
        end = tip - 10 if y2 == 158 else tip + 10
        p.append(f'<line x1="360" y1="{y1}" x2="360" y2="{end}" stroke="{AMBER}" stroke-width="1.8" stroke-dasharray="6 5"/>'
                 f'<polygon points="{head}" fill="{AMBER}"/>'
                 f'<text x="374" y="{ly}" font-size="14" font-style="italic" fill="{INK}" dominant-baseline="middle">{lab}</text>')
    # controls
    p.append(f'<text x="490" y="232" font-size="13" fill="{MUTED}">Controls: age, gender, purchase</text>'
             f'<text x="490" y="250" font-size="13" fill="{MUTED}">frequency of Colgate and Dior</text>')
    p.append(f'<text x="20" y="232" font-size="13" fill="{MUTED}">Each moderator tested in a</text>'
             f'<text x="20" y="250" font-size="13" fill="{MUTED}">separate model (PROCESS Model 1)</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Conceptual model: iconic (H1) and popular (H2) brand coolness moderate the effect of meme type on high-status perception" '
            f'{FONT}>{"".join(p)}</svg>\n')


# Table 3: conditional effect of meme type at moderator = M - 1SD, M, M + 1SD (b, boot LLCI, boot ULCI, significant)
EFFECTS = {
    "Iconic": [("Low (−1 SD)", 0.32, -0.08, 0.72, False), ("Mean", 0.77, 0.44, 1.10, True), ("High (+1 SD)", 1.23, 0.83, 1.63, True)],
    "Popular": [("Low (−1 SD)", 0.46, 0.09, 0.84, True), ("Mean", 1.05, 0.73, 1.36, True), ("High (+1 SD)", 1.63, 1.25, 2.01, True)],
}
INTERACTION = {"Iconic": "Meme type × iconic: β = 0.43, 95% CI [0.22, 0.64]",
               "Popular": "Meme type × popular: β = 0.59, 95% CI [0.38, 0.80]"}


def effects() -> str:
    W, H = 720, 400
    X0, X1 = 300, 690              # plot area
    lo, hi = -0.5, 2.5
    sx = lambda v: X0 + (v - lo) / (hi - lo) * (X1 - X0)
    p = []
    # axis grid
    for t in [-0.5, 0, 0.5, 1.0, 1.5, 2.0, 2.5]:
        x = sx(t)
        p.append(f'<line x1="{x:.1f}" y1="34" x2="{x:.1f}" y2="350" stroke="{INK if t == 0 else RULE}" '
                 f'stroke-width="{1.4 if t == 0 else 1}"/>')
        p.append(f'<text x="{x:.1f}" y="370" font-size="13" fill="{MUTED}" text-anchor="middle">{t:g}</text>')
    p.append(f'<text x="{(X0 + X1) / 2}" y="394" font-size="13" fill="{MUTED}" text-anchor="middle">'
             f'Effect of hedonic vs utilitarian meme on high-status (b, 95% CI)</text>')
    y = 40
    for mod, rows in EFFECTS.items():
        p.append(f'<text x="0" y="{y + 6}" font-size="15" font-weight="600" fill="{INK}">{mod}</text>')
        p.append(f'<text x="0" y="{y + 24}" font-size="12" fill="{MUTED}">{INTERACTION[mod]}</text>')
        y += 44
        for lab, b, l, u, sig in rows:
            col = INK if sig else GREY
            p.append(f'<text x="12" y="{y + 5}" font-size="14" fill="#1d2433">{lab}</text>')
            p.append(f'<line x1="{sx(l):.1f}" y1="{y}" x2="{sx(u):.1f}" y2="{y}" stroke="{col}" stroke-width="2.4"/>')
            for e in (l, u):
                p.append(f'<line x1="{sx(e):.1f}" y1="{y - 6}" x2="{sx(e):.1f}" y2="{y + 6}" stroke="{col}" stroke-width="2"/>')
            fill = AMBER if sig else "#ffffff"
            p.append(f'<circle cx="{sx(b):.1f}" cy="{y}" r="6.5" fill="{fill}" stroke="{col}" stroke-width="2"/>')
            txt = f"{b:.2f}" + ("" if sig else " (n.s.)")
            p.append(f'<text x="{sx(u) + 10:.1f}" y="{y + 5}" font-size="13" font-weight="600" fill="{col}">{txt}</text>')
            y += 30
        y += 22
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Conditional effects of meme type on high-status perception at low, mean and high levels of iconic and popular brand coolness" '
            f'{FONT}>{"".join(p)}</svg>\n')


here = Path(__file__).parent
(here / "aleem-et-al-2024-model.svg").write_text(model())
(here / "aleem-et-al-2024-conditional-effects.svg").write_text(effects())
print("written")
