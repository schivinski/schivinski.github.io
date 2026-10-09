"""Figures 1 and 2 of Pontes, Schivinski, Sindermann, Li, Becker, Zhou & Montag (2021),
International Journal of Mental Health and Addiction 19(2), 508-528. Open access, CC BY 4.0.

Redrawn as vector graphics. Every coefficient, label and significance mark is reproduced exactly as
printed in the published figures (overall sample, then Chinese and British samples).
"""
import math
from pathlib import Path

INK, MUTED, GREY = "#15203b", "#5b6476", "#8b94a7"
FONT = 'font-family="Hanken Grotesk, Arial, Helvetica, sans-serif"'


def label(x, y, lines, size=12, anchor="middle", fill=INK, bg=True):
    """Multi-line label. Each line is raw SVG text content (may contain tspans)."""
    h = size + 3 if len(lines) == 1 else size + 7
    top = y - h * (len(lines) - 1) / 2
    w = max(len(_strip(l)) for l in lines) * size * 0.56 + 8
    out = []
    if bg:
        bx = x - w / 2 if anchor == "middle" else (x - 4 if anchor == "start" else x - w + 4)
        out.append(f'<rect x="{bx:.0f}" y="{top - size:.0f}" width="{w:.0f}" height="{h * len(lines) + 2:.0f}" fill="#fff" opacity="0.92"/>')
    for i, l in enumerate(lines):
        out.append(f'<text x="{x:.0f}" y="{top + i * h:.0f}" font-size="{size}" text-anchor="{anchor}" fill="{fill}">{l}</text>')
    return "".join(out)


def _strip(s):
    import re
    s = re.sub(r"<[^>]+>", "", s)
    return s.replace("&gt;", ">").replace("&lt;", "<")


def sub(t):
    return f'<tspan baseline-shift="sub" font-size="8.5">{t}</tspan>'


def sup(t):
    return f'<tspan baseline-shift="super" font-size="8.5">{t}</tspan>'


def it(t):
    return f'<tspan font-style="italic">{t}</tspan>'


NS = f'<tspan font-style="italic">n.s.</tspan> (<tspan font-style="italic">p</tspan> &gt; 0.05)'


def box(cx, cy, w, h, lines, size=13):
    return (f'<rect x="{cx - w / 2}" y="{cy - h / 2}" width="{w}" height="{h}" fill="#fff" stroke="{INK}" stroke-width="1.4"/>'
            + label(cx, cy + size * 0.35 + (len(lines) - 1) * 0, lines, size=size, bg=False))


def ellipse(cx, cy, rx, ry, text, size=14):
    return (f'<ellipse cx="{cx}" cy="{cy}" rx="{rx}" ry="{ry}" fill="#fff" stroke="{INK}" stroke-width="1.6"/>'
            f'<text x="{cx}" y="{cy + 5}" font-size="{size}" font-weight="600" text-anchor="middle" fill="{INK}">{text}</text>')


def edge_point(cx, cy, rx, ry, tx, ty):
    a = math.atan2(ty - cy, tx - cx)
    return cx + rx * math.cos(a), cy + ry * math.sin(a)


def line(x1, y1, x2, y2, dotted=False, start=False, end=True, color=INK):
    dash = ' stroke-dasharray="2 4" stroke-linecap="round"' if dotted else ""
    ms = ' marker-start="url(#ah)"' if start else ""
    me = ' marker-end="url(#ah)"' if end else ""
    mk = "ag" if color == GREY else "ah"
    ms, me = ms.replace("ah", mk), me.replace("ah", mk)
    return f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" stroke="{color}" stroke-width="1.3"{dash}{ms}{me}/>'


def arc(x1, y1, x2, y2, bulge, dotted=False, color=INK):
    mx, my = (x1 + x2) / 2 + bulge, (y1 + y2) / 2
    dash = ' stroke-dasharray="2 4" stroke-linecap="round"' if dotted else ""
    mk = "ag" if color == GREY else "ah"
    return (f'<path d="M {x1:.1f} {y1:.1f} Q {mx:.1f} {my:.1f} {x2:.1f} {y2:.1f}" fill="none" stroke="{color}" '
            f'stroke-width="1.3"{dash} marker-start="url(#{mk})" marker-end="url(#{mk})"/>')


DEFS = (f'<defs><marker id="ah" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">'
        f'<path d="M0,0 L10,5 L0,10 z" fill="{INK}"/></marker>'
        f'<marker id="ag" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">'
        f'<path d="M0,0 L10,5 L0,10 z" fill="{GREY}"/></marker></defs>')


def covariates(gx, gy, grx, gry, bx, ys, v, oy):
    """Weekly time, gender, age boxes on the right with paths to GD and correlations among them."""
    p = []
    names = [["WEEKLY TIME", "SPENT"], ["GENDER"], ["AGE"]]
    bw, bh = 150, 52
    for (nm, y) in zip(names, ys):
        p.append(box(bx, oy + y, bw, bh, nm if len(nm) == 1 else nm, size=13) if len(nm) == 1 else
                 f'<rect x="{bx - bw / 2}" y="{oy + y - bh / 2}" width="{bw}" height="{bh}" fill="#fff" stroke="{INK}" stroke-width="1.4"/>'
                 f'<text x="{bx}" y="{oy + y - 3}" font-size="13" text-anchor="middle" fill="{INK}">{nm[0]}</text>'
                 f'<text x="{bx}" y="{oy + y + 13}" font-size="13" text-anchor="middle" fill="{INK}">{nm[1]}</text>')
    # paths to GD
    for i, y in enumerate(ys):
        sx, sy = bx - bw / 2, oy + y
        ex, ey = edge_point(gx, oy + gy, grx, gry, sx, sy)
        sig = v["paths"][i]
        if sig is None:
            p.append(line(sx, sy, ex, ey, dotted=True, color=GREY))
            p.append(label((sx + ex) / 2 + 6, (sy + ey) / 2 - 8, [NS + v.get("ns_mark", "")], size=11, fill=GREY))
        else:
            p.append(line(sx, sy, ex, ey))
            p.append(label((sx + ex) / 2 + 8, (sy + ey) / 2 - 10, sig, size=11.5))
    # correlations among covariates (right side)
    rx = bx + bw / 2
    p.append(arc(rx + 2, oy + ys[0] + 14, rx + 2, oy + ys[1] - 14, 22))
    p.append(label(rx - 8, oy + (ys[0] + ys[1]) / 2 + 2, v["r_tg"], size=11.5, anchor="end", bg=False))
    p.append(arc(rx + 2, oy + ys[1] + 14, rx + 2, oy + ys[2] - 14, 22))
    p.append(label(rx - 8, oy + (ys[1] + ys[2]) / 2 + 2, v["r_ga"], size=11.5, anchor="end", bg=False))
    p.append(arc(rx + 4, oy + ys[0] + 4, rx + 4, oy + ys[2] - 4, 95, dotted=True, color=GREY))
    p.append(label(rx + 52, oy + ys[1] + 4, [NS + v.get("ns_mark2", "")], size=11, fill=GREY))
    return p


def fig1_panel(oy, v):
    p = [f'<text x="20" y="{oy + 18}" font-size="13" font-weight="600" fill="{MUTED}" letter-spacing="0.05em">{v["title"]}</text>']
    gx, gy, grx, gry = 455, 185, 118, 52
    item_ys = [55, 135, 215, 295]
    for i, y in enumerate(item_ys):
        p.append(f'<circle cx="38" cy="{oy + y}" r="24" fill="#fff" stroke="{INK}" stroke-width="1.2"/>')
        p.append(label(38, oy + y + 4, v["err"][i], size=10 if len(v["err"][i]) > 1 else 10.5, bg=False))
        p.append(line(62, oy + y, 92, oy + y))
        p.append(box(170, oy + y, 152, 46, [f"GDT ITEM {i + 1}"], size=13.5))
        ex, ey = edge_point(gx, oy + gy, grx, gry, 246, oy + y)
        p.append(line(ex, ey, 248, oy + y))
        p.append(label(ex + (248 - ex) * 0.45, ey + (oy + y - ey) * 0.45 - 4, v["load"][i], size=11.5))
    p.append(ellipse(gx, oy + gy, grx, gry, "GAMING DISORDER"))
    p.append(label(gx + 40, oy + gy - gry - 22, v["r2"], size=11.5, bg=False))
    p += covariates(gx, gy, grx, gry, 745, [85, 185, 285], v, oy)
    return p


def fig2_panel(oy, v):
    p = [f'<text x="20" y="{oy + 18}" font-size="13" font-weight="600" fill="{MUTED}" letter-spacing="0.05em">{v["title"]}</text>']
    cx, rx, ry = 330, 120, 54
    yl, yg, yd = 90, 265, 440
    p.append(ellipse(cx, oy + yl, rx, ry, "LONELINESS"))
    p.append(ellipse(cx, oy + yg, rx, ry, "GAMING DISORDER"))
    p.append(ellipse(cx, oy + yd, rx, ry, "DEPRESSION"))
    lx = cx - rx * 0.72
    p.append(arc(lx, oy + yl + ry * 0.7, lx, oy + yg - ry * 0.7, -55))
    p.append(label(lx - 44, oy + (yl + yg) / 2 + 4, v["r_lg"], size=11.5, anchor="end", bg=False))
    p.append(arc(lx, oy + yg + ry * 0.7, lx, oy + yd - ry * 0.7, -55))
    p.append(label(lx - 44, oy + (yg + yd) / 2 + 4, v["r_gd"], size=11.5, anchor="end", bg=False))
    p.append(arc(cx - rx, oy + yl + 8, cx - rx, oy + yd - 8, -250))
    p.append(label(78, oy + yg + 4, v["r_ld"], size=11.5, bg=True))
    p.append(label(cx + 70, oy + yg - ry - 20, v["r2"], size=11.5, bg=False))
    p += covariates(cx, yg, rx, ry, 735, [165, 265, 365], v, oy)
    return p


def svg(panels, H, aria):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 960 {H}" role="img" aria-label="{aria}" {FONT}>'
            f'{DEFS}{"".join(panels)}</svg>\n')


rc, ru = "r" + sub("China"), "r" + sub("UK")
R = it("r")
CH, UK = sub("(China)"), sub("(UK)")

f1_overall = dict(
    title="OVERALL", err=[["—"], ["0.08"], ["0.08"], ["0.06"]],
    load=[["0.73" + sup("f")], ["0.79"], ["0.79"], ["0.74"]],
    r2=["R" + sup("2") + " = 0.23"],
    paths=[["β = 0.45***"], None, None],
    r_tg=[f"{R} = −0.34***"], r_ga=[f"{R} = −0.11***"])
f1_country = dict(
    title="CHINESE / BRITISH", err=[["—"], ["0.07" + sup("Ch"), "0.09" + sup("UK")], ["0.07" + sup("Ch"), "0.09" + sup("UK")],
                                    ["0.06" + sup("Ch"), "0.06" + sup("UK")]],
    load=[["λ" + CH + " = 0.78", "λ" + UK + " = 0.75"], ["λ" + CH + " = 0.80", "λ" + UK + " = 0.82"],
          ["λ" + CH + " = 0.82", "λ" + UK + " = 0.76"], ["λ" + CH + " = 0.78", "λ" + UK + " = 0.73"]],
    r2=["R" + sup("2") + CH + " = 0.24", "R" + sup("2") + UK + " = 0.23"],
    paths=[["β" + CH + " = 0.45***", "β" + UK + " = 0.46***"], None, None], ns_mark=sup("†"), ns_mark2=sup("†"),
    r_tg=[f"{R}{CH} = −0.36***", f"{R}{UK} = −0.33***"], r_ga=[f"{R}{CH} = −0.33***", f"{R}{UK} = −0.12**"])

f2_overall = dict(
    title="OVERALL", r2=["R" + sup("2") + " = 0.23"],
    paths=[["β = 0.41***"], ["β = −0.15***"], None],
    r_tg=[f"{R} = −0.34***"], r_ga=[f"{R} = −0.11***"],
    r_lg=[f"{R} = 0.45***"], r_gd=[f"{R} = 0.47***"], r_ld=[f"{R} = 0.75***"])
f2_country = dict(
    title="CHINESE / BRITISH", r2=["R" + sup("2") + CH + " = 0.23", "R" + sup("2") + UK + " = 0.24"],
    paths=[["β" + CH + " = 0.41***", "β" + UK + " = 0.43***"], ["β" + CH + " = −0.15***", "β" + UK + " = −0.14***"], None],
    r_tg=[f"{R}{CH} = −0.36***", f"{R}{UK} = −0.33***"], r_ga=[f"{R}{CH} = −0.33***", f"{R}{UK} = −0.10***"],
    r_lg=[f"{R}{CH} = 0.38***", f"{R}{UK} = 0.45***"], r_gd=[f"{R}{CH} = 0.47***", f"{R}{UK} = 0.41***"],
    r_ld=[f"{R}{CH} = 0.74***", f"{R}{UK} = 0.72***"])

here = Path(__file__).parent
sep = f'<line x1="20" y1="372" x2="940" y2="372" stroke="#dde1e8" stroke-width="1"/>'
(here / "pontes-et-al-2021-gdt-mimic.svg").write_text(svg(
    fig1_panel(0, f1_overall) + [sep] + fig1_panel(385, f1_country), 750,
    "MIMIC model of the Gaming Disorder Test: four items loading on one gaming disorder factor, predicted by weekly time spent, gender and age"))
sep2 = f'<line x1="20" y1="525" x2="940" y2="525" stroke="#dde1e8" stroke-width="1"/>'
(here / "pontes-et-al-2021-gdt-nomological.svg").write_text(svg(
    fig2_panel(0, f2_overall) + [sep2] + fig2_panel(540, f2_country), 1060,
    "Nomological network: gaming disorder correlated with loneliness and depression, predicted by weekly time spent, gender and age"))
print("written")
