"""Figure for Łukasik & Schivinski (2015, Annales UMCS sectio H Oeconomia 49(3), 117-124): use of price information
by category risk and retailer image (Figure 1, based on Sheinin & Wagner, 2003). Cell text as printed."""
from pathlib import Path

INK, MUTED, GRID, ACC = "#15203b", "#5b6476", "#dde1e8", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
CELLS = {
    ("high", "high"): ["The positive relationship between price and", "perceived store brand quality was found. In",
                       "a high image retail environment, consumers", "evaluate store brands in the context of high",
                       "status national brands."],
    ("high", "low"): ["There is a positive relationship between price", "and perceived quality. Both attitude and",
                      "purchase intention were lower than expected", "and premium prices than at the discount price."],
    ("low", "high"): ["Consumers perceive higher store brand quality", "at the expected price, than at the discount",
                      "price. They perceive no gain in quality at the", "premium price. A low retail image offers no",
                      "assurance that the quality is sufficient."],
    ("low", "low"): ["Price had no effect on either quality or", "attitude, because in low-risk categories,",
                     "consumers are not inclined to make price-based", "evaluative inferences."],
}


def t(x, y, s, size=13, col=INK, anchor="start", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 430
    x0, y0, cw, ch = 190, 60, 375, 160
    o = [t(x0 + cw / 2, 36, "High-risk category", 14, INK, "middle", "600"),
         t(x0 + cw * 1.5, 36, "Low-risk category", 14, INK, "middle", "600")]
    for r, img in enumerate(("high", "low")):
        y = y0 + r * ch
        o.append(t(x0 - 14, y + ch / 2 - 9, f"{img.capitalize()}-image", 14, INK, "end", "600"))
        o.append(t(x0 - 14, y + ch / 2 + 9, "retailer", 14, INK, "end", "600"))
        for c, risk in enumerate(("high", "low")):
            x = x0 + c * cw
            fill = "#fbf6ec" if risk == "high" else "#ffffff"
            o.append(f'<rect x="{x}" y="{y}" width="{cw}" height="{ch}" fill="{fill}" stroke="{INK}" stroke-width="1.2"/>')
            lines = CELLS[(img, risk)]
            yy = y + ch / 2 - (len(lines) - 1) * 10
            for i, s in enumerate(lines):
                o.append(t(x + 16, yy + i * 20, s, 13))
    o.append(t(20, H - 18, "Based on Sheinin and Wagner (2003): how buyers use price information (discount, expected and "
               "premium prices) by category risk and retailer image.", 12, MUTED))
    aria = ("Two-by-two matrix: in high-risk categories price is positively related to perceived store brand quality; "
            "in low-risk categories with a low-image retailer price has no effect")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("lukasik-schivinski-2015-price-information-matrix.svg").write_text(svg())
print("written")
