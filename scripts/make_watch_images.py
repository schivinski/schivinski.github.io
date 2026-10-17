#!/usr/bin/env python3
"""Make light WebP copies of the Marketing in 3 photos, for faster pages.

For every issue photo in watch/images/ this writes, into watch/images/web/:
  * <name>-640.webp   card thumbnail (from the -og.jpg, 640x336), used on list pages and "Keep reading";
  * <name>-960.webp and <name>-1600.webp, the hero photo for phones and for large/retina screens.
The original JPEGs stay as they are: they remain the Open Graph images and the fallback for old browsers.
Run it after adding a new issue photo, then commit the new files (the publish workflow does not run it).
Needs Pillow: pip install pillow
"""
from __future__ import annotations

import sys
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "watch" / "images"
OUT = IMG / "web"


def save(src: Path, dest: Path, width: int, quality: int) -> None:
    if dest.exists() and dest.stat().st_mtime >= src.stat().st_mtime:
        return
    im = Image.open(src).convert("RGB")
    if im.width > width:
        im = im.resize((width, round(im.height * width / im.width)), Image.LANCZOS)
    im.save(dest, "WEBP", quality=quality, method=6)
    print(f"  {dest.relative_to(ROOT)}  {dest.stat().st_size // 1024} KB")


def main() -> int:
    OUT.mkdir(exist_ok=True)
    for src in sorted(IMG.glob("*.jpg")):
        stem = src.stem
        if stem.endswith("-og"):
            save(src, OUT / f"{stem[:-3]}-640.webp", 640, 74)
        else:
            save(src, OUT / f"{stem}-960.webp", 960, 76)
            save(src, OUT / f"{stem}-1600.webp", 1600, 76)
    return 0


if __name__ == "__main__":
    sys.exit(main())
