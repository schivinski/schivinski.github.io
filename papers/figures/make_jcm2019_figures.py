"""Figures for Montag, Schivinski et al. (2019), Journal of Clinical Medicine 8(10), 1691 (open access, CC BY 4.0).

The article has no figures; these are drawn from its Methods and Table 2 (values exactly as printed):
  1. the mediation model tested (psychopathological symptoms -> seven gaming motives -> disordered gaming);
  2. direct effects of each gaming motive on disordered gaming under the WHO (GDT) and APA (IGDS9-SF) frameworks.
"""
from pathlib import Path

INK, MUTED, RULE, AMBER, GREY = "#15203b", "#5b6476", "#dde1e8", "#e0a12a", "#8b96ad"
FONT = 'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif"'
DEFS = (f'<defs><marker id="ah" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto">'
        f'<path d="M0,0 L10,5 L0,10 z" fill="{INK}"/></marker></defs>')


def model() -> str:
    W, H = 860, 400
    p = [DEFS]
    preds = ["Depression", "Loneliness", "Attention problems"]
    motives = ["Social", "Escape", "Competition", "Coping", "Skill development", "Fantasy", "Recreation"]
    px, mx, gx = 95, 430, 735
    pys = [110, 200, 290]
    mys = [40 + i * 52 for i in range(7)]
    for y in pys:
        for my in mys:
            p.append(f'<line x1="{px + 80}" y1="{y}" x2="{mx - 78}" y2="{my}" stroke="{RULE}" stroke-width="1"/>')
    for my in mys:
        hl = my == mys[1]
        p.append(f'<line x1="{mx + 78}" y1="{my}" x2="{gx - 94}" y2="200" stroke="{AMBER if hl else INK}" '
                 f'stroke-width="{2.2 if hl else 1.1}" marker-end="url(#ah)"/>')
    for y, n in zip(pys, preds):
        p.append(f'<rect x="{px - 80}" y="{y - 22}" width="160" height="44" rx="22" fill="#fff" stroke="{INK}" stroke-width="1.4"/>'
                 f'<text x="{px}" y="{y + 5}" font-size="13.5" text-anchor="middle" fill="{INK}">{n}</text>')
    for y, n in zip(mys, motives):
        p.append(f'<rect x="{mx - 78}" y="{y - 18}" width="156" height="36" rx="18" fill="#fff" stroke="{INK}" stroke-width="1.2"/>'
                 f'<text x="{mx}" y="{y + 5}" font-size="13" text-anchor="middle" fill="{INK}">{n}</text>')
    p.append(f'<rect x="{gx - 92}" y="168" width="184" height="64" rx="32" fill="#fff" stroke="{INK}" stroke-width="1.6"/>'
             f'<text x="{gx}" y="196" font-size="14" font-weight="600" text-anchor="middle" fill="{INK}">Disordered gaming</text>'
             f'<text x="{gx}" y="215" font-size="11.5" text-anchor="middle" fill="{MUTED}">WHO (GDT) or APA (IGDS9-SF)</text>')
    p.append(f'<text x="{px}" y="{H - 40}" font-size="12" font-weight="600" text-anchor="middle" fill="{MUTED}" letter-spacing="0.05em">PSYCHOPATHOLOGY</text>'
             f'<text x="{mx}" y="{H - 10}" font-size="12" font-weight="600" text-anchor="middle" fill="{MUTED}" letter-spacing="0.05em">GAMING MOTIVES (MEDIATORS)</text>'
             f'<text x="{gx}" y="{H - 40}" font-size="12" font-weight="600" text-anchor="middle" fill="{MUTED}" letter-spacing="0.05em">OUTCOME</text>'
             f'<text x="{gx}" y="290" font-size="11.5" text-anchor="middle" fill="{MUTED}">Controls: weekly gaming time,</text>'
             f'<text x="{gx}" y="305" font-size="11.5" text-anchor="middle" fill="{MUTED}">age, gender</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Mediation model: depression, loneliness and attention problems predict disordered gaming through seven gaming motives" {FONT}>'
            + "".join(p) + "</svg>\n")


ROWS = [  # motive, beta WHO (GD), p WHO, beta APA (IGD), p APA  (Table 2, direct effects on disordered gaming)
    ("Escape", 0.44, "0.001", 0.47, "0.001"),
    ("Competition", 0.16, "0.001", 0.21, "0.001"),
    ("Coping", 0.07, "0.08", 0.08, "0.03"),
    ("Social", 0.03, "0.30", 0.04, "0.16"),
    ("Fantasy", 0.01, "0.97", 0.05, "0.16"),
    ("Skill development", -0.09, "0.005", -0.08, "0.006"),
    ("Recreation", -0.14, "0.001", -0.09, "0.004"),
]


def effects() -> str:
    W, LAB, ROW = 760, 150, 46
    x0, scale = 330, 780          # zero line and px per beta unit
    top = 52
    H = top + ROW * len(ROWS) + 46
    p = [f'<line x1="{x0}" y1="{top - 10}" x2="{x0}" y2="{top + ROW * len(ROWS)}" stroke="{INK}" stroke-width="1"/>']
    for v in (-0.2, 0.2, 0.4):
        x = x0 + v * scale
        p.append(f'<line x1="{x}" y1="{top - 10}" x2="{x}" y2="{top + ROW * len(ROWS)}" stroke="{RULE}" stroke-width="1"/>'
                 f'<text x="{x}" y="{top + ROW * len(ROWS) + 18}" font-size="11.5" text-anchor="middle" fill="{MUTED}">' + f"{v:+.1f}".replace("-", "−") + '</text>')
    p.append(f'<text x="{x0}" y="{top + ROW * len(ROWS) + 18}" font-size="11.5" text-anchor="middle" fill="{MUTED}">0</text>'
             f'<text x="{x0 + 0.2 * scale}" y="{top + ROW * len(ROWS) + 38}" font-size="12" text-anchor="middle" fill="{MUTED}">Standardised direct effect on disordered gaming (β)</text>')
    for i, (name, bw, pw, ba, pa) in enumerate(ROWS):
        y = top + i * ROW
        p.append(f'<text x="{LAB}" y="{y + 22}" font-size="14" text-anchor="end" fill="{INK}">{name}</text>')
        for k, (b, pv, col, lab) in enumerate([(bw, pw, AMBER, "WHO"), (ba, pa, INK, "APA")]):
            yy = y + 6 + k * 16
            x1, x2 = sorted([x0, x0 + b * scale])
            sig = float(pv) < 0.05
            fill = col if sig else "#fff"
            p.append(f'<rect x="{x1:.1f}" y="{yy}" width="{max(1.5, x2 - x1):.1f}" height="13" rx="2" fill="{fill}" '
                     f'stroke="{col}" stroke-width="1.2"/>')
            tx = (x2 + 6) if b >= 0 else (x1 - 6)
            anchor = "start" if b >= 0 else "end"
            p.append(f'<text x="{tx:.1f}" y="{yy + 11}" font-size="11.5" text-anchor="{anchor}" fill="{INK}">' + f"{b:+.2f}".replace("-", "−")
                     + f'{"" if sig else " (n.s.)"}</text>')
    p.append(f'<rect x="40" y="8" width="14" height="12" rx="2" fill="{AMBER}"/>'
             f'<text x="60" y="18" font-size="12.5" fill="{INK}">WHO framework (GDT)</text>'
             f'<rect x="230" y="8" width="14" height="12" rx="2" fill="{INK}"/>'
             f'<text x="250" y="18" font-size="12.5" fill="{INK}">APA framework (IGDS9-SF)</text>'
             f'<rect x="450" y="8" width="14" height="12" rx="2" fill="#fff" stroke="{MUTED}"/>'
             f'<text x="470" y="18" font-size="12.5" fill="{INK}">open bar: not significant (p ≥ 0.05)</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Direct effects of seven gaming motives on disordered gaming under the WHO and APA frameworks" {FONT}>'
            + "".join(p) + "</svg>\n")


here = Path(__file__).parent
(here / "montag-et-al-2019-model.svg").write_text(model())
(here / "montag-et-al-2019-motive-effects.svg").write_text(effects())
print("written")
