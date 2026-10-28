"""Figure for Folwarczny, Dubois, Clerc, Schivinski & Otterbring (2026, Wine Economics and Policy, just accepted):
percentage change in NRC emotion word counts for natural relative to conventional wine reviews (Figure 1), drawn from
the values in Table 2 of the article."""
from pathlib import Path

INK, MUTED, GRID, NEG, POS = "#15203b", "#5b6476", "#eceef2", "#b5562f", "#3f7d6e"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
# (label, % change, p as printed, valence)
ROWS = [("Disgust", 40.0, "<.001", "neg"), ("Anger", 31.8, "<.001", "neg"), ("Negative (general)", 31.3, "<.001", "neg"),
        ("Fear", 30.4, "<.001", "neg"), ("Sadness", 7.5, "<.001", "neg"), ("Positive (general)", 5.8, "<.001", "pos"),
        ("Joy", 2.5, "<.001", "pos"), ("Surprise", 1.8, "<.001", "pos"), ("Trust", 0.6, ".145", "pos"),
        ("Anticipation", -2.7, "<.001", "pos")]


def t(x, y, s, size=12.5, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 520
    x0, pw, y0, rh = 240, 620, 70, 38
    lo, hi = -5, 45
    X = lambda v: x0 + (v - lo) / (hi - lo) * pw
    o = []
    o.append(f'<rect x="250" y="18" width="16" height="16" fill="{NEG}"/>')
    o.append(t(274, 27, "Negative emotions and sentiment", anchor="start"))
    o.append(f'<rect x="530" y="18" width="16" height="16" fill="{POS}"/>')
    o.append(t(554, 27, "Positive emotions and sentiment", anchor="start"))
    for v in range(0, 45, 10):
        o.append(f'<line x1="{X(v):.1f}" y1="{y0 - 8}" x2="{X(v):.1f}" y2="{y0 + rh * len(ROWS)}" stroke="{GRID}"/>')
        o.append(t(X(v), y0 + rh * len(ROWS) + 16, f"{v}%" if v else "0", 12, MUTED))
    for i, (lab, v, p, val) in enumerate(ROWS):
        y = y0 + i * rh
        col = NEG if val == "neg" else POS
        xa, xb = sorted((X(0), X(v)))
        op = "0.45" if p == ".145" else "1"
        o.append(f'<rect x="{xa:.1f}" y="{y + 7}" width="{max(xb - xa, 1.5):.1f}" height="{rh - 14}" fill="{col}" '
                 f'opacity="{op}"><title>{lab}: {v:+.1f}% (p {p.replace("<", "&lt;")})</title></rect>')
        o.append(t(x0 - 12, y + rh / 2, lab, 13, anchor="end"))
        sig = "n.s." if p == ".145" else "***"
        lx = (X(v) + 8) if v >= 0 else (X(0) + 8)
        o.append(t(lx, y + rh / 2, f"{v:+.1f}% {sig}".replace("-", "−"), 12, INK if p != ".145" else MUTED, "start",
                   "600" if p != ".145" else "400"))
    o.append(f'<line x1="{X(0):.1f}" y1="{y0 - 8}" x2="{X(0):.1f}" y2="{y0 + rh * len(ROWS)}" stroke="{INK}"/>')
    o.append(t(x0 + pw / 2, y0 + rh * len(ROWS) + 38, "Change in emotion word count, natural relative to conventional "
               "wine reviews", 12.5, MUTED))
    o.append(t(20, H - 14, "NRC Emotion Lexicon; values from Table 2 of the article; *** p &lt; .001; "
               "n.s. = not significant (p = .145); 6,395,585 reviews.", 12, MUTED, anchor="start"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Natural wine reviews '
            f'use far more words of disgust (+40%), anger (+32%), general negativity (+31%) and fear (+30%) than reviews of '
            f'conventional wines, and only slightly more words of joy and surprise" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("folwarczny-et-al-2026-wine-emotions.svg").write_text(svg())
print("written")
