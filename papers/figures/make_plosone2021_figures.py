"""Figure for Montag, Kannen, Schivinski & Pontes (2021, PLOS ONE 16(12), e0261380): Big Five means of gamers with
and without disordered gaming under the WHO and APA frameworks (values as labelled on Figs 1 and 2 of the article)."""
from pathlib import Path

INK, MUTED, GRID = "#15203b", "#5b6476", "#eceef2"
NON, DIS = "#a7adb8", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
TRAITS = ["Openness", "Conscientiousness", "Extraversion", "Agreeableness", "Neuroticism"]
PANELS = [("WHO framework (Gaming Disorder Test)", "n = 49,789", "n = 1,136",
           [3.63, 3.22, 2.76, 3.53, 2.92], [3.44, 2.56, 2.47, 3.23, 3.52]),
          ("APA framework (IGDS9-SF)", "n = 48,138", "n = 2,787",
           [3.64, 3.23, 2.77, 3.54, 2.90], [3.47, 2.73, 2.47, 3.22, 3.51])]


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 470
    pw, ph = 380, 290
    lo, hi = 1, 5
    o = []
    o.append(f'<rect x="250" y="18" width="16" height="16" fill="{NON}"/>')
    o.append(t(274, 27, "Non-disordered gamers", anchor="start"))
    o.append(f'<rect x="470" y="18" width="16" height="16" fill="{DIS}"/>')
    o.append(t(494, 27, "Disordered gamers", anchor="start"))
    for k, (title, nn, nd, non, dis) in enumerate(PANELS):
        x0, y0 = 80 + k * 470, 90
        Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
        o.append(t(x0, y0 - 30, f"{title}", size=14, anchor="start", weight="600"))
        o.append(t(x0, y0 - 12, f"non-disordered {nn}; disordered {nd}", size=12, col=MUTED, anchor="start"))
        for v in range(lo, hi + 1):
            o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
            o.append(t(x0 - 8, Y(v), str(v), size=12, col=MUTED, anchor="end"))
        slot = pw / len(TRAITS)
        bw = 28
        for i, tr in enumerate(TRAITS):
            cx = x0 + slot * (i + 0.5)
            for j, (v, c) in enumerate(((non[i], NON), (dis[i], DIS))):
                bx = cx - bw - 2 + j * (bw + 4)
                o.append(f'<rect x="{bx:.1f}" y="{Y(v):.1f}" width="{bw}" height="{Y(lo) - Y(v):.1f}" fill="{c}">'
                         f'<title>{tr}, {"disordered" if j else "non-disordered"}: {v:.2f}</title></rect>')
                o.append(t(bx + bw / 2, Y(v) - 9, f"{v:.2f}", size=11, col=INK if j else MUTED))
            o.append(t(cx, Y(lo) + 16, tr if tr != "Conscientiousness" else "Conscien-", size=12))
            if tr == "Conscientiousness":
                o.append(t(cx, Y(lo) + 31, "tiousness", size=12))
        o.append(f'<line x1="{x0}" y1="{Y(lo)}" x2="{x0 + pw}" y2="{Y(lo)}" stroke="{INK}"/>')
    o.append(f'<text transform="translate(26,{90 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Mean trait score (BFI-44, 1–5)</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Big Five trait means '
            f'of disordered and non-disordered gamers: disordered gamers score lower on conscientiousness, '
            f'agreeableness, extraversion and openness and higher on neuroticism, under both the WHO and APA frameworks" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("montag-et-al-2021-personality-disordered-gaming.svg").write_text(svg())
print("written")
