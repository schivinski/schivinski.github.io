#!/usr/bin/env python3
"""Public builds only: remove from _site the downloadable files of papers that are still drafts.

Paper pages for drafts are already left out by build_paper_pages.py, but their accepted manuscripts
and scale materials sit in folders that Quarto copies as resources. This removes them, so nothing
from a draft reaches schivinski.github.io before Bruno approves it.
"""
import os
import shutil
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
SITE = Path(os.environ.get("SITE_DIR", ROOT / "_site")) / "papers"

if os.environ.get("PUBLISH") != "1":
    raise SystemExit(0)

removed = []
for f in sorted((ROOT / "papers" / "data").glob("*.yml")):
    d = yaml.safe_load(f.read_text()) or {}
    if d.get("status") == "locked":
        continue
    targets = []
    if d.get("aam"):
        targets.append(SITE / "manuscripts" / d["aam"]["file"])
    for x in (d.get("scale") or {}).get("downloads", []):
        targets.append(SITE / x["file"])
    for t in targets:
        if t.exists():
            t.unlink()
            removed.append(t.relative_to(SITE))
for folder in (SITE / "materials").glob("*") if (SITE / "materials").exists() else []:
    if folder.is_dir() and not any(folder.iterdir()):
        shutil.rmtree(folder)
print("Removed draft files:", *removed, sep="\n  ") if removed else print("No draft files to remove")
