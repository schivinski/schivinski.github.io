"""Figures for Cardenas, Schivinski & Brennan (2024, Journal of Cleaner Production 472, 143452), a systematic
literature review of circular practices regarding food waste in hospitality: the review procedure (Figure 1) and the
profile of the 51 selected studies (Figures 2 to 6), with the counts printed on the article's figures."""
from pathlib import Path

INK, MUTED, GRID, ACC, BAR = "#15203b", "#5b6476", "#eceef2", "#8a5a00", "#3c5a80"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
HERE = Path(__file__).parent


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def wrap(W, H, body, aria):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{body}</svg>\n')


def box(x, y, w, h, lines, fill="#ffffff", bold_first=False):
    o = [f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="3" fill="{fill}" stroke="{INK}" stroke-width="1.3"/>']
    y0 = y + h / 2 - (len(lines) - 1) * 9
    for i, s in enumerate(lines):
        o.append(t(x + 14, y0 + i * 18, s, 13, INK, "start", "600" if (bold_first and i == 0) else "400"))
    return "".join(o)


def down(x, y1, y2):
    return (f'<line x1="{x}" y1="{y1}" x2="{x}" y2="{y2 - 8}" stroke="{INK}" stroke-width="1.4"/>'
            f'<polygon points="{x},{y2} {x - 5},{y2 - 9} {x + 5},{y2 - 9}" fill="{INK}"/>')


def right(x1, x2, y):
    return (f'<line x1="{x1}" y1="{y}" x2="{x2 - 8}" y2="{y}" stroke="{INK}" stroke-width="1.4"/>'
            f'<polygon points="{x2},{y} {x2 - 9},{y - 5} {x2 - 9},{y + 5}" fill="{INK}"/>')


def flow() -> str:
    W, H = 960, 640
    o = []
    stages = [("Identification", 30, 150), ("Screening", 200, 110), ("Eligibility", 330, 110), ("Included", 460, 110)]
    for name, y, h in stages:
        o.append(f'<rect x="20" y="{y}" width="34" height="{h}" rx="4" fill="#fbf6ec" stroke="{ACC}" stroke-width="1.2"/>')
        o.append(f'<text transform="translate(37,{y + h / 2}) rotate(-90)" font-size="13" font-weight="600" '
                 f'fill="{ACC}" text-anchor="middle" dominant-baseline="middle">{name}</text>')
    o.append(box(80, 30, 380, 150, ["Records identified: 4,704", "Databases (n = 9):", "ProQuest, EBSCOhost, Scopus,",
                                     "Web of Science, Google Scholar,", "Emerald, Wiley, Sage, Taylor &amp; Francis"],
                 bold_first=True))
    o.append(box(540, 65, 380, 80, ["Records removed before screening:", "duplicates (n = 1,350)"]))
    o.append(right(460, 540, 105))
    o.append(down(270, 180, 210))
    o.append(box(80, 210, 380, 90, ["Records screened by title and abstract", "(n = 3,354)"]))
    o.append(box(540, 215, 380, 80, ["Records excluded (n = 3,285)"]))
    o.append(right(460, 540, 255))
    o.append(down(270, 300, 340))
    o.append(box(80, 340, 380, 90, ["Full-text articles assessed for eligibility", "(n = 69)"]))
    o.append(box(540, 345, 380, 80, ["Full-text articles removed with reasons", "(n = 18)"]))
    o.append(right(460, 540, 385))
    o.append(down(270, 430, 470))
    o.append(box(80, 470, 380, 90, ["Full-text articles included in the review", "(n = 51)"], "#fbf6ec", True))
    o.append(t(20, H - 40, "Studies published between 1 January 2014 and 22 August 2023; screening following PRISMA, "
               "in Covidence.", 12.5, MUTED, "start"))
    return wrap(W, H, "".join(o), "PRISMA flow: 4,704 records identified, 1,350 duplicates removed, 3,354 screened, "
                "3,285 excluded, 69 full texts assessed, 18 removed, 51 studies included")


def bars(rows, aria, note, label_w=230, W=960):
    rh = 40
    H = 60 + rh * len(rows) + 50
    x0, pw = label_w + 30, W - label_w - 120
    mx = max(v for _, v in rows)
    o = []
    for i, (lab, v) in enumerate(rows):
        y = 30 + i * rh
        w = v / mx * pw
        o.append(t(x0 - 12, y + rh / 2, lab, 13.5, INK, "end"))
        o.append(f'<rect x="{x0}" y="{y + 8}" width="{w:.1f}" height="{rh - 16}" fill="{BAR}"><title>{lab}: {v}</title></rect>')
        o.append(t(x0 + w + 8, y + rh / 2, f"{v} ({v / 51 * 100:.1f}%)", 12.5, INK, "start", "600"))
    o.append(f'<line x1="{x0}" y1="24" x2="{x0}" y2="{36 + rh * len(rows)}" stroke="{INK}"/>')
    o.append(t(20, H - 18, note, 12, MUTED, "start"))
    return wrap(W, H, "".join(o), aria)


FIGS = {
    "years": bars([("2023", 17), ("2022", 13), ("2021", 14), ("2020", 4), ("2019", 1), ("2018", 1), ("2017", 1)],
                  "Selected studies by year: 17 in 2023, 13 in 2022, 14 in 2021, 4 in 2020 and one each in 2017 to 2019",
                  "Number of the 51 selected studies by year of publication (Figure 2 of the article); percentages of 51.",
                  label_w=80),
    "countries": bars([("Others (one study each)", 14), ("Comparative study", 12), ("Italy", 6), ("United States", 3),
                       ("Australia", 2), ("China", 2), ("Indonesia", 2), ("Malaysia", 2), ("Taiwan", 2), ("Thailand", 2),
                       ("Turkey", 2), ("United Kingdom", 2)],
                      "Geographical scope of the selected studies: 12 comparative studies, 6 in Italy, 3 in the United "
                      "States and 14 single studies in other countries",
                      "Others: Finland, Lebanon, Switzerland, Denmark, Cyprus, Russia, Slovenia, New Zealand, Spain, India, "
                      "Canada, Portugal, Peru, Brazil (Figure 3 of the article)."),
    "establishments": bars([("Multiple establishments", 16), ("Restaurant", 12), ("Food surplus redistribution", 8),
                            ("Hotel", 7), ("University canteen", 4), ("Food service", 2), ("Bakery", 1), ("Catering", 1)],
                           "Type of establishment studied: multiple establishments 16, restaurants 12, food surplus "
                           "redistribution 8, hotels 7",
                           "Type of establishment studied in the 51 selected studies (Figure 4 of the article)."),
    "design": bars([("Quantitative", 22), ("Qualitative", 21), ("Mixed methods", 5), ("Experiment", 3)],
                   "Research design of the selected studies: 22 quantitative, 21 qualitative, 5 mixed methods, "
                   "3 experiments",
                   "Research design of the 51 selected studies (Figure 5 of the article).", label_w=130),
    "type": bars([("Exploratory", 27), ("Explanatory", 16), ("Descriptive", 6), ("Descriptive and explanatory", 2)],
                 "Research type of the selected studies: 27 exploratory, 16 explanatory, 6 descriptive, 2 descriptive "
                 "and explanatory",
                 "Research type of the 51 selected studies (Figure 6 of the article)."),
}

(HERE / "cardenas-et-al-2024-food-waste-slr-flow.svg").write_text(flow())
for k, s in FIGS.items():
    (HERE / f"cardenas-et-al-2024-food-waste-slr-{k}.svg").write_text(s)
print("written")
