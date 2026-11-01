"""Figure for Tullett-Prado, Schivinski, Poulus, Griffiths & Stavropoulos (2025, Behaviour & Information Technology
44(20), 4981-5001): the regularised networks of the nine IGD symptoms (IGDS9-SF) and the three DASS-21 subscales at T1
and T2, drawn from the edge weights printed in Tables 4 and 5 of the article (edges of at least 0.05 shown)."""
import math
from pathlib import Path

INK, MUTED, POS, NEG, IGD, DIS = "#15203b", "#5b6476", "#3c5a80", "#b5562f", "#fbf6ec", "#e8eef6"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
NODES = ["IGD1", "IGD2", "IGD3", "IGD4", "IGD5", "IGD6", "IGD7", "IGD8", "IGD9", "Dep", "Anx", "Str"]
LABELS = {"IGD1": "Preoccupation", "IGD2": "Withdrawal", "IGD3": "Tolerance", "IGD4": "Unable to stop",
          "IGD5": "Loss of interest", "IGD6": "Persistence", "IGD7": "Deception", "IGD8": "Escapism",
          "IGD9": "Negative consequences", "Dep": "Depression", "Anx": "Anxiety", "Str": "Stress"}
# Upper triangles of Tables 4 (T1) and 5 (T2), rows in NODES order.
T1 = [
    [0, .218, .254, .025, .132, .071, 0, .081, 0, 0, 0, -.015],
    [.218, 0, .141, .347, .024, .008, .039, 0, 0, 0, 0, .082],
    [.254, .141, 0, .140, .156, .065, 0, .212, 0, .073, 0, 0],
    [.025, .347, .140, 0, .214, .247, .088, .047, .06, 0, 0, 0],
    [.132, .024, .156, .214, 0, .08, .065, .002, .127, .026, .007, 0],
    [.071, .008, .065, .247, .08, 0, .351, 0, .266, .022, 0, 0],
    [0, .039, 0, .088, .065, .351, 0, 0, .156, 0, .035, 0],
    [.081, 0, .212, .047, .002, 0, 0, 0, 0, .170, .043, .063],
    [0, 0, 0, .06, .127, .266, .156, 0, 0, .021, .018, 0],
    [0, 0, .073, 0, .026, .022, 0, .17, .021, 0, .191, .361],
    [0, 0, 0, 0, .007, 0, .035, .043, .018, .191, 0, .548],
    [-.015, .082, 0, 0, 0, 0, 0, .063, 0, .361, .548, 0],
]
T2 = [
    [0, .246, .122, .035, .08, .103, 0, .105, .016, 0, 0, -.013],
    [.246, 0, .277, .178, .063, .078, .119, 0, .087, 0, .01, 0],
    [.122, .277, 0, .161, .082, .115, .087, .059, 0, 0, .063, 0],
    [.035, .178, .161, 0, .163, .173, .123, .027, .012, 0, .039, 0],
    [.08, .063, .082, .163, 0, .191, .031, .124, .061, 0, 0, .025],
    [.103, .078, .115, .173, .191, 0, .164, 0, .217, 0, 0, 0],
    [0, .119, .087, .123, .031, .164, 0, 0, .237, 0, .023, .013],
    [.105, 0, .059, .027, .124, 0, 0, 0, 0, .174, .062, .067],
    [.016, .087, 0, .012, .061, .217, .237, 0, 0, 0, .093, -.005],
    [0, 0, 0, 0, 0, 0, 0, .174, 0, 0, .119, .467],
    [0, .01, .063, .039, 0, 0, .023, .062, .093, .119, 0, .464],
    [-.013, 0, 0, 0, .025, 0, .013, .067, -.005, .467, .464, 0],
]


def positions(cx, cy, r):
    pos = {}
    # IGD symptoms on the left and top arc, distress subscales on the right
    for i, n in enumerate(NODES[:9]):
        a = math.radians(100 + i * (200 / 8))
        pos[n] = (cx + r * math.cos(a), cy - r * math.sin(a))
    for i, n in enumerate(NODES[9:]):
        a = math.radians(35 - i * 35)
        pos[n] = (cx + r * math.cos(a), cy - r * math.sin(a))
    return pos


def panel(m, x0, title):
    cx, cy, r = x0 + 240, 270, 170
    pos = positions(cx, cy, r)
    o = [f'<text x="{cx}" y="40" font-size="16" font-weight="700" fill="{INK}" text-anchor="middle">{title}</text>']
    for i in range(12):
        for j in range(i + 1, 12):
            w = m[i][j]
            if abs(w) < 0.05:
                continue
            (x1, y1), (x2, y2) = pos[NODES[i]], pos[NODES[j]]
            col = POS if w > 0 else NEG
            o.append(f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" stroke="{col}" '
                     f'stroke-width="{1 + abs(w) * 16:.1f}" stroke-opacity="{0.25 + min(abs(w), .55):.2f}" '
                     f'stroke-linecap="round"><title>{LABELS[NODES[i]]} – {LABELS[NODES[j]]}: {w:.3f}</title></line>')
    for n in NODES:
        x, y = pos[n]
        fill = DIS if n in ("Dep", "Anx", "Str") else IGD
        short = n.replace("IGD", "") if n.startswith("IGD") else n[0]
        o.append(f'<circle cx="{x:.1f}" cy="{y:.1f}" r="19" fill="{fill}" stroke="{INK}" stroke-width="1.5"/>')
        o.append(f'<text x="{x:.1f}" y="{y + 5:.1f}" font-size="14" font-weight="700" fill="{INK}" '
                 f'text-anchor="middle">{short}</text>')
    return "".join(o)


def svg() -> str:
    W, H = 960, 610
    o = [panel(T1, 0, "Time 1"), panel(T2, 480, "Time 2 (12 months later)")]
    key = [("1", "Preoccupation"), ("2", "Withdrawal"), ("3", "Tolerance"), ("4", "Unable to stop"),
           ("5", "Loss of interest"), ("6", "Persistence"), ("7", "Deception"), ("8", "Escapism / mood modification"),
           ("9", "Negative consequences"), ("D", "Depression"), ("A", "Anxiety"), ("S", "Stress")]
    for k, (n, lab) in enumerate(key):
        col, row = k % 4, k // 4
        x, y = 40 + col * 225, 500 + row * 26
        fill = DIS if n in ("D", "A", "S") else IGD
        o.append(f'<circle cx="{x}" cy="{y}" r="10" fill="{fill}" stroke="{INK}" stroke-width="1.2"/>')
        o.append(f'<text x="{x}" y="{y + 4.5}" font-size="11.5" font-weight="700" fill="{INK}" text-anchor="middle">{n}</text>')
        o.append(f'<text x="{x + 18}" y="{y + 4.5}" font-size="12.5" fill="{INK}">{lab}</text>')
    o.append(f'<text x="40" y="592" font-size="12" fill="{MUTED}">Regularised partial-correlation networks; edge weights '
             f'from Tables 4 and 5 of the article; edges of at least 0.05 shown (thicker = stronger). Layout drawn for this page.</text>')
    aria = ("Two networks of nine internet gaming disorder symptoms and depression, anxiety and stress at two time points. "
            "Gaming symptoms connect mostly with each other; depression, anxiety and stress connect strongly with each "
            "other; escapism links the gaming cluster to depression at both times")
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="{aria}" '
            f'font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("tullett-prado-et-al-2025-igd-distress-networks.svg").write_text(svg())
print("written")
