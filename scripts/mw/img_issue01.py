"""Hero illustration for Marketing Watch issue 1 (generative AI car ads).
A grid of car-ad banners that resolve from diffusion noise (left) into finished ads (right); the best variant is
framed in amber. Original artwork (numpy/PIL), generic car shapes, no brands or third-party imagery."""
import numpy as np
from PIL import Image, ImageDraw, ImageFilter
from pathlib import Path

NAVY = np.array([21, 32, 59]); AMBER = np.array([224, 161, 42])
SS = 3  # supersampling for smooth car edges


def ridge(n, rough, seed):
    r = np.random.default_rng(seed)
    y = np.zeros(n)
    for k, amp in enumerate([1, .5, .25, .12]):
        f = 2 ** (k + 1)
        y += amp * np.interp(np.linspace(0, f + 1, n), np.arange(f + 2), r.uniform(-1, 1, f + 2))
    return y * rough


def backdrop(w, h, seed, mood):
    """Sky, sun glow, hills and a flat road band; mood shifts the palette (dusk, golden, blue hour)."""
    yy = np.linspace(0, 1, h)[:, None]
    top, mid, low = [np.array(c, float) for c in mood]
    sky = np.where(yy < .5, top + (mid - top) * (yy / .5), mid + (low - mid) * ((yy - .5) / .5))
    img = np.repeat(sky[:, None, :], w, axis=1).reshape(h, w, 3)
    X, Y = np.meshgrid(np.arange(w), np.arange(h))
    r = np.random.default_rng(seed)
    sx, sy = r.uniform(.2, .8) * w, .52 * h
    d = np.sqrt((X - sx) ** 2 + (Y - sy) ** 2)
    img += (np.clip(1 - d / (w * .35), 0, 1) ** 2)[..., None] * np.array([70, 50, 15])
    for i, (c, b) in enumerate(zip([(92, 66, 96), (58, 46, 78)], [.56, .63])):
        line = (b + ridge(w, .06, seed * 7 + i)) * h
        img[Y > line[None, :]] = c
    road_top = int(.74 * h)
    img[road_top:] = np.array([34, 36, 52])
    img[road_top:road_top + max(1, h // 60)] = np.array([120, 110, 120])          # road edge highlight
    for x in range(0, w, w // 8):                                                   # lane dashes
        img[int(.87 * h):int(.87 * h) + max(1, h // 70), x:x + w // 16] = np.array([200, 170, 110])
    return np.clip(img, 0, 255)


def car(draw, cx, base, L, body, glass, s):
    """Generic modern crossover in side view; cx = centre x, base = ground y, L = length (all in supersampled px)."""
    H = L * .30
    x0 = cx - L / 2
    P = lambda fx, fy: (x0 + fx * L, base - fy * H)
    body_pts = [P(0, .22), P(.02, .45), P(.10, .58), P(.30, .64), P(.42, .98), P(.70, 1.0), P(.84, .70),
                P(.97, .62), P(1.0, .45), P(.99, .22), P(.86, .20), P(.80, .34), P(.66, .34), P(.62, .20),
                P(.36, .20), P(.32, .34), P(.18, .34), P(.14, .20)]
    draw.polygon(body_pts, fill=body)
    # window band
    draw.polygon([P(.36, .66), P(.45, .92), P(.68, .93), P(.80, .68)], fill=glass)
    draw.line([P(.58, .92), P(.58, .66)], fill=body, width=int(L * .012))
    # light strip + shadow under car
    draw.line([P(.90, .52), P(.99, .50)], fill=(255, 236, 190), width=int(L * .012))
    draw.line([P(.01, .50), P(.06, .52)], fill=(230, 80, 60), width=int(L * .01))
    for fx in (.25, .73):
        wx, wy = P(fx, .20)
        R = L * .085
        draw.ellipse([wx - R, wy - R, wx + R, wy + R], fill=(18, 18, 24))
        r2 = R * .55
        draw.ellipse([wx - r2, wy - r2, wx + r2, wy + r2], fill=(150, 152, 165))
        r3 = R * .2
        draw.ellipse([wx - r3, wy - r3, wx + r3, wy + r3], fill=(60, 62, 72))


def tile(w, h, seed, mood, body):
    bg = backdrop(w * SS, h * SS, seed, mood)
    im = Image.fromarray(bg.astype("uint8"))
    shadow = Image.new("L", im.size, 0)
    L = w * SS * .62
    cx = w * SS * (.5 + np.random.default_rng(seed).uniform(-.08, .08))
    base = h * SS * .83
    ImageDraw.Draw(shadow).ellipse([cx - L * .52, base - L * .03, cx + L * .52, base + L * .035], fill=150)
    im.paste((10, 10, 16), (0, 0), shadow.filter(ImageFilter.GaussianBlur(L * .02)))
    car(ImageDraw.Draw(im), cx, base, L, body, (30, 38, 58), SS)
    return np.array(im.resize((w, h), Image.LANCZOS)).astype(float)


def noisify(img, t, seed):
    if t <= 0:
        return img
    h, w, _ = img.shape
    noise = np.random.default_rng(seed).normal(128, 70, (h, w, 3)) * .7 + (NAVY * .5 + AMBER * .2) * .3
    out = img * (1 - t) + noise * t
    if t > .35:
        b = int(2 + t * 14)
        small = Image.fromarray(np.clip(out, 0, 255).astype("uint8")).resize((max(1, w // b), max(1, h // b)), Image.BILINEAR)
        out = np.array(small.resize((w, h), Image.NEAREST)).astype(float) * .55 + out * .45
    return np.clip(out, 0, 255)


MOODS = [((30, 42, 84), (200, 112, 70), (246, 196, 112)),     # dusk
         ((44, 70, 120), (232, 160, 90), (252, 220, 150)),     # golden hour
         ((22, 34, 70), (96, 104, 150), (196, 160, 150))]      # blue hour
BODIES = [(236, 236, 232), (198, 202, 210), (224, 161, 42), (70, 76, 92), (236, 236, 232)]

W, H = 1600, 900
X, Y = np.meshgrid(np.linspace(0, 1, W), np.linspace(0, 1, H))
bg = NAVY + (np.clip(1 - np.sqrt((X - .85) ** 2 + (Y - .45) ** 2) / .9, 0, 1) ** 2)[..., None] * np.array([70, 48, 12])
canvas = Image.fromarray(np.clip(bg, 0, 255).astype("uint8")).convert("RGBA")
cols, rows, cw, ch, gap = 5, 3, 252, 172, 26
x0 = (W - (cols * cw + (cols - 1) * gap)) // 2
y0 = (H - (rows * ch + (rows - 1) * gap)) // 2
sh = Image.new("RGBA", (W, H), (0, 0, 0, 0))
sd = ImageDraw.Draw(sh)
for r_ in range(rows):
    for c in range(cols):
        x, y = x0 + c * (cw + gap), y0 + r_ * (ch + gap)
        sd.rounded_rectangle([x + 6, y + 10, x + cw + 6, y + ch + 10], 14, fill=(0, 0, 0, 120))
canvas.alpha_composite(sh.filter(ImageFilter.GaussianBlur(12)))
for r_ in range(rows):
    for c in range(cols):
        seed = 11 + r_ * cols + c
        t = [1.0, .72, .45, .2, 0][c] * (1 - .08 * r_ * (c > 0))
        t_img = noisify(tile(cw, ch, seed, MOODS[(r_ + c) % 3], BODIES[(r_ * 2 + c) % 5]), t, seed)
        m = Image.new("L", (cw, ch), 0)
        ImageDraw.Draw(m).rounded_rectangle([0, 0, cw - 1, ch - 1], 14, fill=255)
        x, y = x0 + c * (cw + gap), y0 + r_ * (ch + gap)
        canvas.paste(Image.fromarray(t_img.astype("uint8")).convert("RGBA"), (x, y), m)
        if c == cols - 1 and r_ == 1:
            ImageDraw.Draw(canvas).rounded_rectangle([x - 5, y - 5, x + cw + 4, y + ch + 4], 18, outline=(224, 161, 42, 255), width=4)
arr = np.array(canvas.convert("RGB")).astype(float) + np.random.default_rng(3).normal(0, 6, (H, W, 3))
out = Image.fromarray(np.clip(arr, 0, 255).astype("uint8"))
here = Path(__file__).resolve().parents[2] / "watch" / "images"
out.save(here / "issue-01-generative-ai-ad-images.jpg", quality=86, optimize=True, progressive=True)
out.resize((1200, 675), Image.LANCZOS).crop((0, 22, 1200, 652)).save(here / "issue-01-generative-ai-ad-images-og.jpg", quality=85, optimize=True)
print("ok")
