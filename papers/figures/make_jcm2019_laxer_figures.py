"""Redraw Figure 2 of Pontes, Schivinski, Brzozowska-Woś & Stavropoulos (2019, Journal of Clinical Medicine 8(10), 1730)
as SVG: the conditional inference tree on the nine IGD criteria (N = 3,222; 31 disordered gamers). Splits, node sizes
and percentages as printed on the published figure and in Table 2."""
from pathlib import Path

INK, MUTED, ACC, GRID = "#15203b", "#5b6476", "#8a5a00", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def node(x, y, label):
    return (f'<ellipse cx="{x}" cy="{y}" rx="88" ry="28" fill="#ffffff" stroke="{INK}" stroke-width="1.5"/>'
            + t(x, y - 6, label, 13.5, weight="600") + t(x, y + 12, "p &lt; .001", 11.5, MUTED))


def edge(x1, y1, x2, y2, lab, lx, ly, anchor="middle"):
    return (f'<line x1="{x1}" y1="{y1}" x2="{x2}" y2="{y2}" stroke="{INK}" stroke-width="1.4"/>'
            + f'<text x="{lx}" y="{ly}" font-size="12" fill="{INK}" text-anchor="{anchor}" dominant-baseline="middle" '
              f'stroke="#ffffff" stroke-width="4" paint-order="stroke">{lab}</text>')


def leaf(x, y, n, dis, name):
    w, h = 104, 120
    frac = dis / n
    o = [f'<rect x="{x - w / 2}" y="{y}" width="{w}" height="{h}" fill="#ffffff" stroke="{INK}" stroke-width="1.3"/>']
    if dis:
        o.append(f'<rect x="{x - w / 2}" y="{y + h * (1 - frac):.1f}" width="{w}" height="{h * frac:.1f}" fill="{ACC}"/>')
    o.append(t(x, y - 14, f"n = {n:,}", 12.5, weight="600"))
    o.append(t(x, y + h + 16, name, 12.5, ACC if dis else MUTED, weight="600"))
    o.append(t(x, y + h + 33, f"{dis} disordered ({100 * frac:.1f}%)" if dis else "0 disordered", 11.5, MUTED))
    return "".join(o)


def svg() -> str:
    W, H = 960, 640
    o = []
    o.append(node(480, 60, "Withdrawal"))
    o.append(edge(430, 84, 230, 160, "≤ 4 (not endorsed)", 300, 112, "end"))
    o.append(edge(530, 84, 700, 160, "= 5 (very often)", 640, 112, "start"))
    o.append(node(220, 180, "Preoccupation"))
    o.append(node(700, 180, "Loss of control"))
    o.append(edge(190, 206, 110, 322, "≤ 4", 135, 262, "end"))
    o.append(edge(250, 206, 300, 322, "= 5", 290, 262, "start"))
    o.append(edge(660, 206, 560, 270, "≤ 4", 600, 230, "end"))
    o.append(edge(740, 206, 850, 322, "= 5", 810, 262, "start"))
    o.append(node(520, 290, "Neg. consequences"))
    o.append(edge(490, 316, 440, 392, "≤ 3", 455, 352, "end"))
    o.append(edge(550, 316, 620, 392, "&gt; 3", 600, 352, "start"))
    o.append(leaf(110, 350, 3061, 0, "Healthy"))
    o.append(leaf(300, 350, 84, 6, "Preoccupied"))
    o.append(leaf(440, 420, 35, 0, "Low risk"))
    o.append(leaf(620, 420, 15, 4, "Harmful"))
    o.append(leaf(850, 350, 27, 21, "Impaired self-control"))
    o.append(t(20, H - 14, "Shaded part of each box = share of gamers meeting the disordered gaming threshold (five or more "
               "criteria answered ‘very often’).", 12, MUTED, anchor="start"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Conditional inference '
            f'tree: gamers who very often feel withdrawal and loss of control have a 78% probability of disordered '
            f'gaming; almost all gamers without withdrawal or preoccupation are healthy" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("pontes-et-al-2019-igd-ctree.svg").write_text(svg())
print("written")
