"""Draw Figures 1 and 2 of Schivinski, Pontes, Czarnecka, Mao, De Vita & Stavropoulos (2022, Journal of Product &
Brand Management) as SVG. Figure 2 is redrawn from the published simple-slopes plot (end points read from the figure)."""
import math
from pathlib import Path

INK, MUTED, GREY, ACC = "#15203b", "#5b6476", "#9aa3b5", "#8a5a00"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"


def head(x2, y2, ang, col, s=10):
    p1 = (x2 - s * math.cos(ang - 0.38), y2 - s * math.sin(ang - 0.38))
    p2 = (x2 - s * math.cos(ang + 0.38), y2 - s * math.sin(ang + 0.38))
    return f'<polygon points="{x2:.1f},{y2:.1f} {p1[0]:.1f},{p1[1]:.1f} {p2[0]:.1f},{p2[1]:.1f}" fill="{col}"/>'


def arrow(x1, y1, x2, y2, *, col=INK, dashed=False, w=1.7):
    ang = math.atan2(y2 - y1, x2 - x1)
    dash = ' stroke-dasharray="6 5"' if dashed else ""
    return (f'<line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2 - 8 * math.cos(ang):.1f}" y2="{y2 - 8 * math.sin(ang):.1f}" '
            f'stroke="{col}" stroke-width="{w}"{dash}/>' + head(x2, y2, ang, col))


def label(x, y, t, *, col=INK, size=15, weight="600", anchor="middle", italic=False):
    st = ' font-style="italic"' if italic else ""
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}"{st} fill="{col}" '
            f'text-anchor="{anchor}" dominant-baseline="middle" stroke="#ffffff" stroke-width="4" '
            f'stroke-linejoin="round" paint-order="stroke">{t}</text>')


def box(x0, y0, x1, y1, lines, *, fill="#ffffff", bold=False):
    out = [f'<rect x="{x0}" y="{y0}" width="{x1 - x0}" height="{y1 - y0}" rx="4" fill="{fill}" stroke="{INK}" '
           f'stroke-width="1.8"/>']
    cx, cy = (x0 + x1) / 2, (y0 + y1) / 2
    ys = cy - (len(lines) - 1) * 9.5
    for i, t in enumerate(lines):
        out.append(f'<text x="{cx}" y="{ys + i * 19}" font-size="16" fill="{INK}" text-anchor="middle" '
                   f'dominant-baseline="middle"{" font-weight=\"600\"" if bold else ""}>{t}</text>')
    return "".join(out)


def pt(a, b, t):
    return a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t


# ---------------------------------------------------------------- Figure 1: conceptual model
def fig1():
    W, H = 900, 470
    SC = (300, 22, 520, 82)
    CB = (560, 120, 800, 196)
    FC = (20, 196, 250, 270)
    UG = (20, 330, 250, 404)
    PI = (650, 330, 880, 404)
    b = []
    # main paths: start/end points on box edges
    p_fc_cb = ((250, 220), (560, 160))
    p_ug_cb = ((250, 345), (560, 186))
    p_cb_pi = ((735, 196), (765, 330))
    p_fc_pi = ((250, 250), (650, 345))
    p_ug_pi = ((250, 380), (650, 380))
    for (a, z), lab, t, off in ((p_fc_cb, "+", 0.15, -14), (p_ug_cb, "+", 0.15, -14), (p_cb_pi, "+", 0.5, 14),
                                (p_fc_pi, "+", 0.15, 14), (p_ug_pi, "+", 0.15, 14)):
        b.append(arrow(*a, *z))
        mx, my = pt(a, z, t)
        ang = math.atan2(z[1] - a[1], z[0] - a[0])
        b.append(label(mx - math.sin(ang) * off, my + math.cos(ang) * off, lab, size=18))
    # moderation: self-congruity onto the four content -> outcome paths
    targets = [(p_fc_cb, 0.35), (p_ug_cb, 0.60), (p_fc_pi, 0.60), (p_ug_pi, 0.80)]
    starts = [335, 390, 445, 500]
    for (path, t), sx in zip(targets, starts):
        tx, ty = pt(*path, t)
        b.append(arrow(sx, SC[3], tx, ty, col=ACC, dashed=True, w=1.5))
        lx, ly = pt((sx, SC[3]), (tx, ty), 0.78)
        b.append(label(lx - 12, ly, "+", col=ACC, size=17))
    b.append(box(*SC, ["Self-congruity"], fill="#fbf6ec"))
    b.append(box(*CB, ["Consumer-based", "brand equity"]))
    b.append(box(*FC, ["Firm-created content"]))
    b.append(box(*UG, ["User-generated content"]))
    b.append(box(*PI, ["Purchase intention of", "fashion products"]))
    # legend
    b.append(f'<line x1="22" y1="452" x2="62" y2="452" stroke="{INK}" stroke-width="1.7"/>'
             f'<text x="70" y="452" font-size="12.5" fill="{MUTED}" dominant-baseline="middle">Direct and mediated paths</text>'
             f'<line x1="250" y1="452" x2="290" y2="452" stroke="{ACC}" stroke-width="1.5" stroke-dasharray="6 5"/>'
             f'<text x="298" y="452" font-size="12.5" fill="{MUTED}" dominant-baseline="middle">Moderation by self-congruity</text>'
             f'<text x="520" y="452" font-size="12.5" fill="{MUTED}" dominant-baseline="middle">Controls: age, gender, social media platform, brand usage</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Conceptual model: consumer-based brand equity mediates the effect of firm-created and '
            f'user-generated content on purchase intention, moderated by self-congruity" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(b)}</svg>\n')


# ---------------------------------------------------------------- Figure 2: simple slopes
SLOPES = {  # CBBE at low and high content perception, for high / mid / low self-congruity (read from the figure)
    "Firm-created content": {"High": (4.04, 4.43), "Mid": (3.82, 4.30), "Low": (3.60, 4.19)},
    "User-generated content": {"High": (3.88, 4.40), "Mid": (3.79, 4.12), "Low": (3.69, 3.81)},
}
STYLE = {"High": ("", 2.6, INK), "Mid": ("8 5", 2.4, INK), "Low": ("2 4", 2.4, MUTED)}


def fig2():
    W, H = 900, 430
    lo, hi = 3.5, 4.5
    out = []
    for k, (name, lines) in enumerate(SLOPES.items()):
        x0 = 80 + k * 440
        pw, y0, ph = 330, 50, 280
        X = lambda i: x0 + 50 + i * (pw - 100)
        Y = lambda v: y0 + ph - (v - lo) / (hi - lo) * ph
        out.append(f'<text x="{x0 + pw / 2}" y="24" font-size="15" font-weight="600" fill="{INK}" '
                   f'text-anchor="middle">{name}</text>')
        for v in (3.6, 3.8, 4.0, 4.2, 4.4):
            out.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="#e8ebf0" stroke-width="1"/>'
                       f'<text x="{x0 - 8}" y="{Y(v):.1f}" font-size="12" fill="{MUTED}" text-anchor="end" '
                       f'dominant-baseline="middle">{v:.2f}</text>')
        out.append(f'<line x1="{x0}" y1="{y0}" x2="{x0}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.2"/>'
                   f'<line x1="{x0}" y1="{y0 + ph}" x2="{x0 + pw}" y2="{y0 + ph}" stroke="{INK}" stroke-width="1.2"/>')
        for i, t in enumerate(("Low", "High")):
            out.append(f'<text x="{X(i)}" y="{y0 + ph + 18}" font-size="13" fill="{INK}" text-anchor="middle">{t}</text>')
        out.append(f'<text x="{x0 + pw / 2}" y="{y0 + ph + 40}" font-size="13" fill="{MUTED}" text-anchor="middle">'
                   f'Perception of {name.lower()}</text>')
        if k == 0:
            out.append(f'<text transform="translate({x0 - 52},{y0 + ph / 2}) rotate(-90)" font-size="13" fill="{MUTED}" '
                       f'text-anchor="middle">Consumer-based brand equity</text>')
        for lvl, (a, z) in lines.items():
            dash, w, col = STYLE[lvl]
            d = f' stroke-dasharray="{dash}"' if dash else ""
            out.append(f'<line x1="{X(0)}" y1="{Y(a):.1f}" x2="{X(1)}" y2="{Y(z):.1f}" stroke="{col}" stroke-width="{w}"'
                       f' stroke-linecap="round"{d}/>')
            out.append(f'<text x="{X(1) + 8}" y="{Y(z):.1f}" font-size="12" fill="{col}" dominant-baseline="middle">{lvl}</text>')
    # legend
    lx = 300
    out.append(f'<text x="{lx - 10}" y="410" font-size="12.5" fill="{MUTED}" text-anchor="end" dominant-baseline="middle">Self-congruity:</text>')
    for i, lvl in enumerate(("High", "Mid", "Low")):
        dash, w, col = STYLE[lvl]
        d = f' stroke-dasharray="{dash}"' if dash else ""
        x = lx + i * 120
        out.append(f'<line x1="{x}" y1="410" x2="{x + 40}" y2="410" stroke="{col}" stroke-width="{w}"{d}/>'
                   f'<text x="{x + 48}" y="410" font-size="12.5" fill="{MUTED}" dominant-baseline="middle">{lvl}</text>')
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" '
            f'aria-label="Self-congruity moderates the relation between social media brand-related content types and '
            f'consumer-based brand equity" font-family="{FONT}"><rect width="{W}" height="{H}" fill="#ffffff"/>'
            f'{"".join(out)}</svg>\n')


here = Path(__file__).parent
(here / "schivinski-et-al-2022-fashion-model.svg").write_text(fig1())
(here / "schivinski-et-al-2022-fashion-slopes.svg").write_text(fig2())
print("written")
