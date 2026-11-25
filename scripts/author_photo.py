#!/usr/bin/env python3
"""Prepare a headshot an author sent for their "From the author" comment (Bruno, 25 Nov 2026).

  python scripts/author_photo.py INPUT_FILE OUTPUT_NAME [TOP]
  e.g. python scripts/author_photo.py ~/Downloads/headshot.png 2026-12-10-preiksaitis

TOP (0 to 1, default 0.2) sets where the square is cut from a tall photo: 0 keeps the very top, 0.5 the middle.
Look at the result; if the head is cut, run it again with a smaller TOP.

Writes watch/images/authors/OUTPUT_NAME.jpg: turned upright from the camera's orientation tag, cropped to a square
(centred across, slightly high so the face stays in frame), 400 x 400 pixels, JPEG quality 85, and saved WITHOUT any
metadata (no EXIF, GPS or camera data). Prints the path to put in the issue file's author_comments[].photo
("authors/OUTPUT_NAME.jpg").

Use only a photo the author sent for this purpose. Never take one from a university page, a social profile or the web.
"""
import sys
from pathlib import Path

from PIL import Image, ImageOps

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "watch" / "images" / "authors"
SIZE = 400


def main(src: str, name: str, top_frac: float = 0.2) -> None:
    im = ImageOps.exif_transpose(Image.open(src)).convert("RGB")
    w, h = im.size
    side = min(w, h)
    left = (w - side) // 2
    top = int((h - side) * top_frac)   # portraits: keep more of the top, where the face is
    im = im.crop((left, top, left + side, top + side)).resize((SIZE, SIZE), Image.LANCZOS)
    OUT.mkdir(parents=True, exist_ok=True)
    out = OUT / f"{Path(name).stem}.jpg"
    im.info = {}   # drop EXIF, GPS, ICC and any other metadata the camera or phone added
    im.save(out, "JPEG", quality=85, optimize=True, progressive=True)
    print(f"wrote {out.relative_to(ROOT)}  ->  photo: authors/{out.name}")


if __name__ == "__main__":
    if len(sys.argv) not in (3, 4):
        raise SystemExit(__doc__)
    main(sys.argv[1], sys.argv[2], float(sys.argv[3]) if len(sys.argv) == 4 else 0.2)
