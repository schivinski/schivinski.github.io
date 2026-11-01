"""Figure for Burleigh, Hao, Schivinski, Prokofieva, Zarate, Brown & Stavropoulos (2026, Nature Reviews Psychology):
the three kinds of digital data streams the Review describes (active, passive, hybrid) and the small set of candidate
digital markers of risk it identifies across studies. Drawn for this page from the Review's text, Table 1 and Fig. 1;
not a reproduction of the article's figure."""
from pathlib import Path

INK, MUTED, ACC = "#15203b", "#5b6476", "#8a5a00"
RED, BLUE, AMBER = "#b5562f", "#3c5a80", "#c98a12"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def t(x, y, s, size=13, col=INK, anchor="start", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def box(x, y, w, h, col, title, sub, items):
    o = [f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="6" fill="#ffffff" stroke="{col}" stroke-width="2"/>',
         f'<rect x="{x}" y="{y}" width="{w}" height="46" rx="6" fill="{col}"/>',
         f'<rect x="{x}" y="{y + 30}" width="{w}" height="16" fill="{col}"/>',
         t(x + 14, y + 16, title, 15, "#ffffff", weight="700"),
         t(x + 14, y + 35, sub, 12, "#ffffff")]
    for i, s in enumerate(items):
        if not s.startswith("  "):
            o.append(f'<circle cx="{x + 18}" cy="{y + 68 + i * 22}" r="2.6" fill="{col}"/>')
        o.append(t(x + 28, y + 68 + i * 22, s.strip(), 13))
    return "".join(o)


def arrow(x1, y1, x2, y2):
    return (f'<line x1="{x1}" y1="{y1}" x2="{x2 - 8}" y2="{y2}" stroke="{INK}" stroke-width="1.6"/>'
            f'<polygon points="{x2},{y2} {x2 - 10},{y2 - 5} {x2 - 10},{y2 + 5}" fill="{INK}"/>')


def svg() -> str:
    W, H = 960, 610
    o = []
    o.append(box(20, 20, 290, 230, RED, "Active data streams", "People provide the input",
                 ["Ecological momentary assessment", "Experience sampling", "In-app or embedded surveys",
                  "Digital diaries", "Capture: mood, craving, motives,", "  perceived control and harm"]))
    o.append(box(20, 270, 290, 230, BLUE, "Passive data streams", "Captured automatically",
                 ["Screen, app and notification logs", "Device and platform telemetry", "Wearables: sleep, activity,",
                  "  heart rate", "Clickstreams, purchases, posts,", "  chats, searches, social graphs"]))
    o.append(box(380, 145, 250, 230, AMBER, "Hybrid data streams", "Passive and active, linked",
                 ["Logged use matched to", "  momentary reports", "Prompts triggered by long", "  sessions or frequent checking",
                  "Separates high engagement", "  from loss of control"]))
    o.append(arrow(310, 135, 380, 220))
    o.append(arrow(310, 385, 380, 300))
    o.append(arrow(630, 260, 680, 260))
    o.append(f'<rect x="680" y="70" width="262" height="380" rx="6" fill="#fbf6ec" stroke="{ACC}" stroke-width="1.6"/>')
    o.append(t(696, 96, "Candidate digital markers", 15, ACC, weight="700"))
    o.append(t(696, 116, "recurring across studies", 13, ACC, weight="600"))
    markers = ["Late-night and irregular use", "Short gaps between sessions", "Fast responses to notifications",
               "Frequent brief checking", "Disrupted sleep–wake rhythms", "Escalating engagement"]
    for i, s in enumerate(markers):
        y = 152 + i * 34
        o.append(f'<circle cx="{706}" cy="{y}" r="9" fill="{ACC}"/>')
        o.append(t(706, y + 0.5, str(i + 1), 11, "#ffffff", "middle", "700"))
        o.append(t(724, y, s, 13.5))
    o.append(t(696, 380, "Linked to higher addiction-scale", 12.5, MUTED))
    o.append(t(696, 398, "scores and symptom burden; best", 12.5, MUTED))
    o.append(t(696, 416, "read in context, as prompts for", 12.5, MUTED))
    o.append(t(696, 434, "clinical conversation", 12.5, MUTED))
    o.append(t(20, 532, "Machine learning on these streams: supervised models (regularized regression, support vector machines, "
               "decision trees, random forests,", 12.5, INK))
    o.append(t(20, 552, "gradient boosting, deep learning) predict scale-based risk; unsupervised models (clustering, "
               "dimensionality reduction, topic models) find subgroups.", 12.5, INK))
    o.append(t(20, 584, "Drawn for this page from the Review's text, Table 1 and Figure 1 (Burleigh et al., 2026).", 12, MUTED))
    aria = ("Diagram: active data streams (self-reports) and passive data streams (logs, telemetry, sensors) combine into "
            "hybrid data streams, which point to six candidate digital markers of risk: late-night and irregular use, short "
            "gaps between sessions, fast responses to notifications, frequent brief checking, disrupted sleep-wake rhythms "
            "and escalating engagement")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("burleigh-et-al-2026-digital-traces-markers.svg").write_text(svg())
print("written")
