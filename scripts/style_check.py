#!/usr/bin/env python3
"""Check Marketing in 3 issues against the banned phrases in watch/STYLE_LOG.md (Bruno's language corrections).

  python3 scripts/style_check.py                      # every issue in watch/issues/
  python3 scripts/style_check.py watch/issues/X.yml   # just these files

Prints file:line and the phrase for every hit and exits 1 if there is any, 0 if the issues are clean. Run it before
publishing; rules about tone or structure that a script cannot catch are checked by hand against the log's entries.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LOG = ROOT / "watch" / "STYLE_LOG.md"


def patterns() -> list[tuple[str, re.Pattern]]:
    text = LOG.read_text(encoding="utf-8")
    block = re.search(r"<!-- style-check:start -->(.*?)<!-- style-check:end -->", text, re.S)
    out = []
    for line in (block.group(1) if block else "").splitlines():
        line = line.strip()
        if not line.startswith("- "):
            continue
        item = line[2:].strip()
        if item.startswith("re:"):
            out.append((item, re.compile(item[3:].strip(), re.I)))
        else:
            out.append((item, re.compile(r"\b" + re.escape(item) + r"\b", re.I)))
    return out


def main(args: list[str]) -> int:
    files = [Path(a) for a in args] or sorted((ROOT / "watch" / "issues").glob("*.yml"))
    pats = patterns()
    hits = 0
    for f in files:
        lines = f.read_text(encoding="utf-8").splitlines()
        # join wrapped YAML lines so a phrase split across two lines is still caught
        for i, line in enumerate(lines):
            window = line + " " + (lines[i + 1].strip() if i + 1 < len(lines) else "")
            for name, p in pats:
                m = p.search(window)
                if m and m.start() < len(line):
                    hits += 1
                    print(f"{f}:{i + 1}: banned phrase ({name}): {line.strip()[:120]}")
    print(f"style check: {len(files)} file(s), {len(pats)} banned phrase(s), {hits} hit(s)")
    return 1 if hits else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
