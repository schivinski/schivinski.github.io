"""Figures for Marengo, Schivinski, Pontes & Montag (2026), Journal of Behavioral Addictions 15(2), 735-745.

The published figures cannot be redrawn from the article alone (Fig. 1 and Fig. 2 need the raw data), so these
three are drawn from the Methods and from Table 2, with every value exactly as printed:
  1. how the analytic sample was built and what was measured;
  2. mean gaming disorder scores by preferred device, under both diagnostic frameworks (Table 2);
  3. preferred game genres by device (Table 2), as a dot plot.
"""
from pathlib import Path

INK, MUTED, RULE, AMBER, GREY = "#15203b", "#5b6476", "#dde1e8", "#e0a12a", "#8b96ad"
BLUE, RUST = "#5b78a8", "#b0563f"
FONT = 'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif"'
DEVICES = [("Console", AMBER), ("Desktop", INK), ("Laptop", BLUE), ("Phone or tablet", RUST)]


def wrap(svg: str, w: int, h: int, title: str) -> str:
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}" width="{w}" height="{h}" '
            f'role="img" aria-label="{title}" {FONT}><title>{title}</title>'
            f'<rect width="{w}" height="{h}" fill="#fff"/>{svg}</svg>')


def design() -> str:
    W, H = 860, 430
    p = [f'<defs><marker id="ah2" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" '
         f'orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="{MUTED}"/></marker></defs>']
    steps = [("188,775 responses", "Gamers from 181 countries, recruited in 2019 through the\nElectronic Sports League's healthy-gaming campaign"),
             ("127,028 after cleaning", "Implausible ages and play times, invented games and\nnon-gamers removed"),
             ("116,047 analysed", "Entries whose favourite game could not be matched to the\nRAWG database, and 74 duplicates, removed")]
    y = 36
    for i, (head, sub) in enumerate(steps):
        p.append(f'<rect x="40" y="{y}" width="330" height="76" rx="8" fill="#fff" stroke="{INK}" stroke-width="1.4"/>'
                 f'<text x="58" y="{y + 28}" font-size="16" font-weight="600" fill="{INK}">{head}</text>')
        for j, line in enumerate(sub.split("\n")):
            p.append(f'<text x="58" y="{y + 48 + j * 15}" font-size="11.5" fill="{MUTED}">{line}</text>')
        if i < 2:
            p.append(f'<line x1="205" y1="{y + 76}" x2="205" y2="{y + 104}" stroke="{MUTED}" stroke-width="1.3" '
                     f'marker-end="url(#ah2)"/>')
        y += 104
    boxes = [("Each player reported", ["Favourite game (free text)", "Preferred device", "Weekly hours of play"]),
             ("Matched from RAWG", ["Genre tags (21 genres)", "Multiplayer: yes or no"]),
             ("Gaming disorder measured twice", ["IGDS9-SF, nine APA criteria", "GDT, four WHO criteria"])]
    by = 18
    for head, items in boxes:
        hgt = 34 + 19 * len(items)
        p.append(f'<rect x="455" y="{by}" width="368" height="{hgt}" rx="8" fill="#f7f8fa" stroke="{RULE}" stroke-width="1"/>'
                 f'<text x="473" y="{by + 23}" font-size="13" font-weight="600" fill="{INK}">{head}</text>')
        for j, it in enumerate(items):
            p.append(f'<circle cx="479" cy="{by + 39 + j * 19}" r="2.6" fill="{AMBER}"/>'
                     f'<text x="490" y="{by + 43 + j * 19}" font-size="12" fill="{MUTED}">{it}</text>')
        by += hgt + 14
    p.append(f'<rect x="455" y="{by}" width="368" height="86" rx="8" fill="#fff" stroke="{INK}" stroke-width="1.4"/>'
             f'<text x="473" y="{by + 24}" font-size="13" font-weight="600" fill="{INK}">Analysis</text>')
    for j, it in enumerate(["Rank-biserial correlations (Somers’ D), overall and",
                            "within each device group; Kruskal–Wallis tests",
                            "Random Forest, 100 trees, out-of-bag accuracy"]):
        p.append(f'<text x="473" y="{by + 42 + j * 17}" font-size="12" fill="{MUTED}">{it}</text>')
    return wrap("".join(p), W, H, "How the analytic sample of 116,047 gamers was built and what was measured")


def gd_by_device() -> str:
    """Table 2: mean IGDS9-SF (APA) and GDT (WHO) scores by preferred device. Scale minimum is 1."""
    rows = [("Console", 1.92, 2.12), ("Desktop computer", 2.03, 2.28),
            ("Laptop computer", 2.03, 2.28), ("Phone or tablet", 1.99, 2.24)]
    W, H = 860, 360
    x0, x1, lo, hi = 230, 790, 1.0, 2.5
    p = []

    def xs(v: float) -> float:
        return x0 + (v - lo) / (hi - lo) * (x1 - x0)

    t = lo
    while t <= hi + 1e-9:
        p.append(f'<line x1="{xs(t):.1f}" y1="52" x2="{xs(t):.1f}" y2="306" stroke="{RULE}" stroke-width="1"/>'
                 f'<text x="{xs(t):.1f}" y="328" font-size="12" text-anchor="middle" fill="{MUTED}">{t:.2f}</text>')
        t += 0.25
    p.append(f'<text x="{(x0 + x1) / 2}" y="350" font-size="12" text-anchor="middle" fill="{MUTED}">'
             f'Mean score on a 1 to 5 scale</text>')
    y = 70
    for name, apa, who in rows:
        p.append(f'<text x="214" y="{y + 28}" font-size="14" text-anchor="end" fill="{INK}">{name}</text>')
        for v, col, lab in ((apa, INK, "APA"), (who, AMBER, "WHO")):
            p.append(f'<rect x="{x0}" y="{y}" width="{xs(v) - x0:.1f}" height="21" fill="{col}" rx="2"/>'
                     f'<text x="{xs(v) + 8:.1f}" y="{y + 16}" font-size="12.5" fill="{INK}">{v:.2f}</text>'
                     f'<text x="{x0 + 8}" y="{y + 16}" font-size="11" font-weight="600" fill="#fff">{lab}</text>')
            y += 26
        y += 12
    p.append(f'<text x="{x0}" y="30" font-size="12.5" fill="{MUTED}">'
             f'Dark bars: APA framework (IGDS9-SF). Amber bars: WHO framework (GDT).</text>')
    return wrap("".join(p), W, H, "Mean gaming disorder scores by preferred device under both frameworks")


def genres_by_device() -> str:
    """Table 2: estimated marginal percentage preferring each genre, by device."""
    rows = [("Action", 78.46, 76.48, 74.12, 59.81), ("RPG", 32.05, 43.03, 45.89, 38.12),
            ("Shooter", 36.14, 31.20, 24.31, 16.68), ("Massively multiplayer", 13.97, 29.99, 25.28, 15.29),
            ("Strategy", 3.99, 25.85, 34.74, 33.77), ("Adventure", 31.44, 16.14, 13.00, 21.47),
            ("Simulation", 13.86, 11.88, 14.01, 11.23), ("Indie", 5.26, 11.74, 11.92, 5.66),
            ("Sports", 9.13, 3.52, 2.99, 3.87), ("Casual", 3.32, 5.84, 6.02, 10.97),
            ("Fighting", 5.70, 1.30, 1.14, 2.12), ("Arcade", 2.16, 3.03, 4.10, 11.18),
            ("Card games", 0.42, 1.51, 2.60, 5.40), ("Racing", 3.05, 2.78, 1.89, 1.14),
            ("Platformer", 2.68, 0.94, 1.37, 1.43), ("Puzzle", 0.51, 0.30, 0.41, 3.65),
            ("Board games", 0.11, 0.57, 0.92, 0.51)]
    W = 860
    top, step = 86, 31
    H = top + step * len(rows) + 56
    x0, x1 = 230, 800
    p = []
    for t in range(0, 90, 10):
        x = x0 + t / 80 * (x1 - x0)
        p.append(f'<line x1="{x:.1f}" y1="{top - 16}" x2="{x:.1f}" y2="{top + step * len(rows) - 12}" '
                 f'stroke="{RULE}" stroke-width="1"/>'
                 f'<text x="{x:.1f}" y="{top + step * len(rows) + 8}" font-size="11.5" text-anchor="middle" '
                 f'fill="{MUTED}">{t}%</text>')
    lx = x0
    for name, col in DEVICES:
        p.append(f'<circle cx="{lx + 6}" cy="30" r="5.5" fill="{col}"/>'
                 f'<text x="{lx + 18}" y="34" font-size="12.5" fill="{INK}">{name}</text>')
        lx += 36 + len(name) * 7
    p.append(f'<text x="{x0}" y="58" font-size="12" fill="{MUTED}">Share of players on each device whose '
             f'favourite game carried the genre tag</text>')
    y = top
    for name, *vals in rows:
        p.append(f'<line x1="{x0}" y1="{y}" x2="{x1}" y2="{y}" stroke="#f1f3f6" stroke-width="12"/>'
                 f'<text x="214" y="{y + 5}" font-size="13.5" text-anchor="end" fill="{INK}">{name}</text>')
        for v, (_, col) in zip(vals, DEVICES):
            x = x0 + v / 80 * (x1 - x0)
            p.append(f'<circle cx="{x:.1f}" cy="{y}" r="5.5" fill="{col}" stroke="#fff" stroke-width="1"/>')
        y += step
    return wrap("".join(p), W, H, "Preferred game genres by device among 116,047 gamers")


def main() -> None:
    d = Path(__file__).resolve().parent
    (d / "marengo-et-al-2026-design.svg").write_text(design(), encoding="utf-8")
    (d / "marengo-et-al-2026-gd-by-device.svg").write_text(gd_by_device(), encoding="utf-8")
    (d / "marengo-et-al-2026-genres-by-device.svg").write_text(genres_by_device(), encoding="utf-8")
    print("wrote 3 figures")


if __name__ == "__main__":
    main()
