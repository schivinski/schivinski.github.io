#!/usr/bin/env python3
"""Make the link-preview images (1200x630) shown when a page is shared on LinkedIn, X, WhatsApp, Slack, etc.

Writes:
  * assets/share/site.png: the default card (home, publications, teaching, consultancy, mentoring);
  * assets/share/papers/<slug>.png: one card per paper page, with the paper's title, journal and year.
The page builders pick these up automatically when they exist. Run it after adding a paper page, then commit
the new image (the publish workflow does not run it). Needs Pillow and fonttools: pip install pillow fonttools brotli
"""
from __future__ import annotations

import html
import io
import sys
import textwrap
from pathlib import Path

import yaml
from fontTools.ttLib import TTFont
from PIL import Image, ImageDraw, ImageFont, ImageOps

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "assets" / "share"
INK, INK_SOFT, AMBER, WHITE, MUTED = (21, 32, 59), (38, 51, 90), (224, 161, 42), (255, 255, 255), (201, 208, 224)
W, H = 1200, 630


def font(name: str, size: int, weight: int) -> ImageFont.FreeTypeFont:
    """Load a self-hosted variable WOFF2 (assets/fonts) at the given weight."""
    tt = TTFont(ROOT / "assets" / "fonts" / f"{name}-latin.woff2")
    tt.flavor = None
    buf = io.BytesIO()
    tt.save(buf)
    buf.seek(0)
    f = ImageFont.truetype(buf, size)
    try:
        axes = f.get_variation_axes()
        vals = []
        for a in axes:
            tag = a.get("name", b"")
            tag = tag.decode() if isinstance(tag, bytes) else str(tag)
            if tag.lower().startswith("weight"):
                vals.append(weight)
            elif tag.lower().startswith("optical"):
                vals.append(min(max(size * 0.75, a["minimum"]), a["maximum"]))
            else:
                vals.append(a["default"])
        f.set_variation_by_axes(vals)
    except Exception:
        pass
    return f


def base() -> tuple[Image.Image, ImageDraw.ImageDraw]:
    im = Image.new("RGB", (W, H), INK)
    d = ImageDraw.Draw(im)
    d.rectangle([0, H - 14, W, H], fill=AMBER)
    return im, d


def wrap(d: ImageDraw.ImageDraw, text: str, f, width_px: int) -> list[str]:
    words, lines, cur = text.split(), [], ""
    for w in words:
        trial = f"{cur} {w}".strip()
        if d.textlength(trial, font=f) <= width_px:
            cur = trial
        else:
            lines.append(cur)
            cur = w
    if cur:
        lines.append(cur)
    return lines


def site_card() -> None:
    im, d = base()
    photo = Image.open(ROOT / "assets" / "bruno.jpg").convert("RGB")
    photo = ImageOps.fit(photo, (300, 300), Image.LANCZOS)
    mask = Image.new("L", (300, 300), 0)
    ImageDraw.Draw(mask).ellipse([0, 0, 299, 299], fill=255)
    d.ellipse([84, 151, 396, 463], outline=AMBER, width=6)
    im.paste(photo, (90, 157), mask)
    x = 460
    d.text((x, 170), "Bruno Schivinski", font=font("newsreader", 72, 500), fill=WHITE)
    d.text((x, 268), "Associate Professor of Marketing", font=font("hanken-grotesk", 34, 500), fill=WHITE)
    d.text((x, 314), "Gdańsk University of Technology", font=font("hanken-grotesk", 34, 400), fill=MUTED)
    d.text((x, 392), "Consumer engagement · digital and social media", font=font("hanken-grotesk", 28, 400), fill=MUTED)
    d.text((x, 432), "Marketing in 3, new issues every Monday and Thursday", font=font("hanken-grotesk", 28, 400), fill=MUTED)
    d.text((x, 520), "schivinski.com", font=font("hanken-grotesk", 28, 600), fill=AMBER)
    OUT.mkdir(parents=True, exist_ok=True)
    im.save(OUT / "site.png", optimize=True)


def paper_card(slug: str, p: dict) -> None:
    im, d = base()
    year = str(p.get("published", ""))[:4]
    kicker = font("hanken-grotesk", 26, 600)
    d.text((90, 78), "RESEARCH PAPER" + ("  ·  FREE FULL TEXT" if p.get("aam") or p.get("open_access") else ""),
           font=kicker, fill=AMBER)
    size = 64
    while True:
        tf = font("newsreader", size, 500)
        lines = wrap(d, html.unescape(p["title"]), tf, W - 180)
        if len(lines) <= 4 or size <= 40:
            break
        size -= 4
    if len(lines) > 4:
        lines = lines[:4]
        lines[-1] = lines[-1].rstrip(" ,:;") + "…"
    y = 132
    for ln in lines:
        d.text((90, y), ln, font=tf, fill=WHITE)
        y += int(size * 1.18)
    jf = font("hanken-grotesk", 30, 500)
    journal = f"{html.unescape(p.get('journal', ''))}, {year}"
    if d.textlength(journal, font=jf) > W - 180:
        journal = textwrap.shorten(journal, 60, placeholder="…")
    d.text((90, 478), journal, font=jf, fill=WHITE)
    d.text((90, 520), p.get("cite_short", ""), font=font("hanken-grotesk", 26, 400), fill=MUTED)
    d.text((W - 90, 520), "schivinski.com", font=font("hanken-grotesk", 26, 600), fill=AMBER, anchor="ra")
    (OUT / "papers").mkdir(parents=True, exist_ok=True)
    im.save(OUT / "papers" / f"{slug}.png", optimize=True)


def main() -> int:
    site_card()
    for f in sorted((ROOT / "papers" / "data").glob("*.yml")):
        p = yaml.safe_load(f.read_text(encoding="utf-8")) or {}
        if p.get("title"):
            paper_card(f.stem, p)
    print("share cards written to", OUT.relative_to(ROOT))
    return 0


if __name__ == "__main__":
    sys.exit(main())
