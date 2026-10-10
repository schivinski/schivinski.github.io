"""Hero illustration for Marketing Watch issue 1 (generative AI ad images).
A grid of small 'ad' landscapes that resolve from diffusion noise (left) to finished images (right).
Original artwork rendered with numpy/PIL; no third-party imagery."""
import numpy as np
from PIL import Image, ImageDraw, ImageFilter
from pathlib import Path

rng = np.random.default_rng(7)
W, H = 1600, 900
NAVY = np.array([21, 32, 59]); AMBER = np.array([224, 161, 42])


def ridge(n, rough, seed):
    r = np.random.default_rng(seed)
    y = np.zeros(n)
    for k, amp in enumerate([1, .5, .25, .12, .06]):
        f = 2 ** (k + 1)
        pts = r.uniform(-1, 1, f + 2)
        y += amp * np.interp(np.linspace(0, f + 1, n), np.arange(f + 2), pts)
    return y * rough


def scene(w, h, seed, hue_shift):
    r = np.random.default_rng(seed)
    yy = np.linspace(0, 1, h)[:, None]
    top = np.array([28, 40, 82]) + hue_shift * np.array([10, 0, -10])
    mid = np.array([196, 110, 70]) + hue_shift * np.array([-20, 10, 20])
    low = np.array([246, 196, 110])
    sky = np.where(yy < .55, top + (mid - top) * (yy / .55), mid + (low - mid) * ((yy - .55) / .45))
    img = np.repeat(sky[:, None, :], w, axis=1).reshape(h, w, 3).astype(float)
    # sun
    sx, sy, sr = r.uniform(.25, .75) * w, r.uniform(.42, .58) * h, r.uniform(.07, .1) * w
    X, Y = np.meshgrid(np.arange(w), np.arange(h))
    d = np.sqrt((X - sx) ** 2 + (Y - sy) ** 2)
    glow = np.clip(1 - d / (sr * 3.2), 0, 1) ** 2
    img += glow[..., None] * np.array([60, 45, 10])
    img[d < sr] = np.array([255, 226, 160])
    # mountain layers
    cols = [np.array([110, 72, 92]), np.array([70, 50, 80]), np.array([38, 36, 66])]
    bases = [.62, .7, .8]
    for i, (c, b) in enumerate(zip(cols, bases)):
        line = (b + ridge(w, .07 + .03 * i, seed * 10 + i)) * h
        mask = Y > line[None, :]
        img[mask] = c
    # road
    road = np.zeros((h, w), bool)
    for y in range(int(.8 * h), h):
        t = (y - .8 * h) / (.2 * h)
        cx = w * (.5 + .08 * np.sin(seed)) + (1 - t) * .05 * w
        half = 4 + t * w * .32
        road[y, int(max(0, cx - half)):int(min(w, cx + half))] = True
        if int(t * 14) % 2 == 0:
            lw = 1 + t * 3
            road[y, int(cx - lw):int(cx + lw)] = False
    img[road] = np.array([28, 30, 44])
    return np.clip(img, 0, 255)


def noisify(img, t, seed):
    r = np.random.default_rng(seed)
    if t <= 0:
        return img
    h, w, _ = img.shape
    noise = r.normal(128, 70, (h, w, 3))
    tint = NAVY * .5 + AMBER * .2
    noise = noise * .7 + tint * .3
    out = img * (1 - t) + noise * t
    if t > .35:  # coarse blocks at high noise
        b = int(2 + t * 14)
        small = Image.fromarray(np.clip(out, 0, 255).astype("uint8")).resize((max(1, w // b), max(1, h // b)), Image.BILINEAR)
        out = np.array(small.resize((w, h), Image.NEAREST)).astype(float) * .55 + out * .45
    return np.clip(out, 0, 255)


# background: deep navy with a warm glow on the right
X, Y = np.meshgrid(np.linspace(0, 1, W), np.linspace(0, 1, H))
bg = NAVY + (np.clip(1 - np.sqrt((X - .85) ** 2 + (Y - .45) ** 2) / .9, 0, 1) ** 2)[..., None] * np.array([70, 48, 12])
canvas = Image.fromarray(np.clip(bg, 0, 255).astype("uint8")).convert("RGBA")

cols, rows = 5, 3
cw, ch, gap = 252, 172, 26
x0 = (W - (cols * cw + (cols - 1) * gap)) // 2
y0 = (H - (rows * ch + (rows - 1) * gap)) // 2
shadow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
sd = ImageDraw.Draw(shadow)
for r_ in range(rows):
    for c in range(cols):
        x, y = x0 + c * (cw + gap), y0 + r_ * (ch + gap)
        sd.rounded_rectangle([x + 6, y + 10, x + cw + 6, y + ch + 10], 14, fill=(0, 0, 0, 120))
canvas.alpha_composite(shadow.filter(ImageFilter.GaussianBlur(12)))
for r_ in range(rows):
    for c in range(cols):
        seed = 3 + r_ * cols + c
        t = [1.0, .72, .45, .2, 0][c] * (1 - .08 * r_ * (c > 0))
        tile = noisify(scene(cw, ch, seed, (c - 2) * .15 + (r_ - 1) * .2), t, seed)
        tile = Image.fromarray(tile.astype("uint8")).convert("RGBA")
        m = Image.new("L", (cw, ch), 0)
        ImageDraw.Draw(m).rounded_rectangle([0, 0, cw - 1, ch - 1], 14, fill=255)
        x, y = x0 + c * (cw + gap), y0 + r_ * (ch + gap)
        canvas.paste(tile, (x, y), m)
        if c == cols - 1 and r_ == 1:  # the 'best' variant gets an amber ring
            ImageDraw.Draw(canvas).rounded_rectangle([x - 5, y - 5, x + cw + 4, y + ch + 4], 18, outline=(224, 161, 42, 255), width=4)

# film grain
arr = np.array(canvas.convert("RGB")).astype(float)
arr += rng.normal(0, 6, arr.shape)
out = Image.fromarray(np.clip(arr, 0, 255).astype("uint8"))
here = Path(__file__).resolve().parents[2] / "watch" / "images"
out.save(here / "issue-01-generative-ai-ad-images.jpg", quality=86, optimize=True, progressive=True)
og = out.resize((1200, 675), Image.LANCZOS).crop((0, 22, 1200, 652))
og.save(here / "issue-01-generative-ai-ad-images-og.jpg", quality=85, optimize=True)
print("ok")
