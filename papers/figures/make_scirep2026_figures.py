"""Figure for Kavvadias, Schivinski, Arachchilage, Brown & Stavropoulos (2026, Scientific Reports 16, 3936): the emotional
tone of r/StopGaming posts, redrawn from the averages printed in Figures 4 and 5 and the Results of the article (NRC
Emotion Lexicon proportions; NRC positive and negative word shares)."""
from pathlib import Path

INK, MUTED, GRID, POS, NEG, NEU = "#15203b", "#5b6476", "#eceef2", "#3f7d6e", "#b5562f", "#8a8f99"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
EMOTIONS = [("Anticipation", 0.22, "pos"), ("Trust", 0.21, "pos"), ("Joy", 0.17, "pos"), ("Fear", 0.13, "neg"),
            ("Sadness", 0.13, "neg"), ("Anger", 0.11, "neg"), ("Disgust", 0.09, "neg"), ("Surprise", 0.06, "neu")]
POLARITY = [("Positive words", 0.41, "pos"), ("Negative words", 0.32, "neg")]
COL = {"pos": POS, "neg": NEG, "neu": NEU}


def t(x, y, s, size=13, col=INK, anchor="start", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def bars(rows, x0, y0, pw, rh, vmax, ticks):
    o = []
    X = lambda v: x0 + v / vmax * pw
    for v in ticks:
        o.append(f'<line x1="{X(v):.1f}" y1="{y0 - 6}" x2="{X(v):.1f}" y2="{y0 + rh * len(rows)}" stroke="{GRID}"/>')
        o.append(t(X(v), y0 + rh * len(rows) + 16, f"{v:.1f}".replace("0.0", "0") if v else "0", 12, MUTED, "middle"))
    for i, (lab, v, k) in enumerate(rows):
        y = y0 + i * rh
        o.append(t(x0 - 12, y + rh / 2, lab, 13.5, INK, "end"))
        o.append(f'<rect x="{x0}" y="{y + 7}" width="{X(v) - x0:.1f}" height="{rh - 14}" fill="{COL[k]}">'
                 f'<title>{lab}: {v:.2f}</title></rect>')
        o.append(t(X(v) + 8, y + rh / 2, f"{v:.2f}", 12.5, INK, "start", "600"))
    o.append(f'<line x1="{x0}" y1="{y0 - 6}" x2="{x0}" y2="{y0 + rh * len(rows)}" stroke="{INK}"/>')
    return "".join(o)


def svg() -> str:
    W, H = 960, 470
    o = [t(30, 26, "Emotions (NRC Emotion Lexicon)", 14, INK, "start", "600"),
         t(600, 26, "Word polarity (NRC)", 14, INK, "start", "600")]
    o.append(bars(EMOTIONS, 140, 50, 300, 38, 0.25, [0, 0.1, 0.2]))
    o.append(bars(POLARITY, 730, 50, 150, 38, 0.5, [0, 0.2, 0.4]))
    o.append(f'<rect x="600" y="170" width="14" height="14" fill="{POS}"/>')
    o.append(t(622, 177, "Positive emotion or polarity", 12.5, INK))
    o.append(f'<rect x="600" y="196" width="14" height="14" fill="{NEG}"/>')
    o.append(t(622, 203, "Negative emotion or polarity", 12.5, INK))
    o.append(f'<rect x="600" y="222" width="14" height="14" fill="{NEU}"/>')
    o.append(t(622, 229, "Surprise (neither)", 12.5, INK))
    o.append(t(600, 268, "Overall sentiment (VADER, −1 to +1):", 12.5, MUTED))
    o.append(t(600, 288, "mean 0.35, median 0.60", 12.5, INK, "start", "600"))
    o.append(t(600, 318, "Valence 0.20, arousal −0.03,", 12.5, INK))
    o.append(t(600, 338, "dominance 0.06 (NRC VAD lexicon)", 12.5, INK))
    o.append(t(30, H - 34, "Average proportion of emotion words per post across all topics, as printed in Figures 4 and 5 and the "
               "Results of the article.", 12, MUTED))
    o.append(t(30, H - 14, "Posts from Reddit's r/StopGaming community; the lexicons count emotion-related words, "
               "not the writers' clinical state.", 12, MUTED))
    aria = ("Bar charts: in r/StopGaming posts, anticipation (0.22) and trust (0.21) are the most frequent emotions, followed "
            "by joy (0.17), fear and sadness (0.13), anger (0.11), disgust (0.09) and surprise (0.06); positive words 0.41 "
            "versus negative words 0.32")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("kavvadias-et-al-2026-stopgaming-emotions.svg").write_text(svg())
print("written")
