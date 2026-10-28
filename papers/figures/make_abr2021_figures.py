"""Redraw Fig. 1 of Montag, Schivinski & Pontes (2021, Addictive Behaviors Reports 14, 100391) as SVG: number of
participants by usual gaming device and preferred gaming mode (counts as labelled on the published figure)."""
from pathlib import Path

INK, MUTED, GRID = "#15203b", "#5b6476", "#eceef2"
FONT = "Hanken Grotesk, Arial, Helvetica, sans-serif"
MODES = [("Online", "#8a5a00"), ("Mixed (online and offline)", "#d0a24f"), ("Offline", "#a7adb8")]
DEVICES = [("Console", (382, 189, 201)), ("Desktop computer", (850, 409, 182)),
           ("Laptop", (134, 65, 79)), ("Mobile device", (124, 77, 76))]


def t(x, y, s, size=13, col=INK, anchor="middle", weight="400"):
    return (f'<text x="{x:.1f}" y="{y:.1f}" font-size="{size}" fill="{col}" text-anchor="{anchor}" '
            f'font-weight="{weight}" dominant-baseline="middle">{s}</text>')


def svg() -> str:
    W, H = 960, 470
    x0, y0, pw, ph = 90, 80, 840, 310
    hi = 900
    Y = lambda v: y0 + ph - v / hi * ph
    o = []
    for k, (lab, c) in enumerate(MODES):
        lx = x0 + k * 250
        o.append(f'<rect x="{lx}" y="22" width="16" height="16" fill="{c}"/>')
        o.append(t(lx + 24, 31, lab, size=13.5, anchor="start"))
    for v in range(0, hi + 1, 150):
        o.append(f'<line x1="{x0}" y1="{Y(v):.1f}" x2="{x0 + pw}" y2="{Y(v):.1f}" stroke="{GRID}"/>')
        o.append(t(x0 - 8, Y(v), f"{v:,}", size=12, col=MUTED, anchor="end"))
    slot = pw / len(DEVICES)
    bw = 52
    for i, (name, vals) in enumerate(DEVICES):
        cx = x0 + slot * (i + 0.5)
        for k, v in enumerate(vals):
            bx = cx + (k - 1.5) * (bw + 6) + 3
            o.append(f'<rect x="{bx:.1f}" y="{Y(v):.1f}" width="{bw}" height="{Y(0) - Y(v):.1f}" fill="{MODES[k][1]}">'
                     f'<title>{name}, {MODES[k][0]}: {v}</title></rect>')
            o.append(t(bx + bw / 2, Y(v) - 10, str(v), size=12, col=INK if k == 0 else MUTED))
        o.append(t(cx, Y(0) + 18, f"{name} (n = {sum(vals):,})", size=13))
    o.append(f'<line x1="{x0}" y1="{Y(0)}" x2="{x0 + pw}" y2="{Y(0)}" stroke="{INK}"/>')
    o.append(f'<text transform="translate(28,{y0 + ph / 2}) rotate(-90)" font-size="14" fill="{MUTED}" '
             f'text-anchor="middle">Number of participants</text>')
    o.append(t(x0, H - 22, "N = 2,768 German-speaking gamers; usual gaming device by preferred gaming mode.", size=12.5,
               col=MUTED, anchor="start"))
    return (f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" role="img" aria-label="Participants by '
            f'gaming device and gaming mode: online play is the most common mode on every device, and desktop computer '
            f'users stand out with a large mixed online and offline group" font-family="{FONT}">'
            f'<rect width="{W}" height="{H}" fill="#ffffff"/>{"".join(o)}</svg>\n')


Path(__file__).with_name("montag-et-al-2021-gaming-device-mode.svg").write_text(svg())
print("written")
