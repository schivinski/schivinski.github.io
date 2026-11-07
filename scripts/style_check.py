#!/usr/bin/env python3
"""Check Marketing in 3 issues against the banned phrases in watch/STYLE_LOG.md (Bruno's language corrections).

  python3 scripts/style_check.py                      # every issue in watch/issues/
  python3 scripts/style_check.py watch/issues/X.yml   # just these files

Prints file:line and the phrase for every hit and exits 1 if there is any, 0 if the issues are clean. Run it before
publishing; rules about tone or structure that a script cannot catch are checked by hand against the log's entries.

The log's banned block holds one entry per line:
  - phrase                      plain phrase, whole words, case-insensitive
  - re: <regex>                 regular expression, case-insensitive
  - allow <file part> :: <re>   exception: a hit is ignored when this regex matches text that overlaps it, in files
                                whose name contains <file part> (use * for every file). For literal or technical uses
                                only, such as the name of a theory or words quoted from a study.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LOG = ROOT / "watch" / "STYLE_LOG.md"


def rules() -> tuple[list[tuple[str, re.Pattern]], list[tuple[str, re.Pattern]]]:
    text = LOG.read_text(encoding="utf-8")
    block = re.search(r"<!-- style-check:start -->(.*?)<!-- style-check:end -->", text, re.S)
    banned, allowed = [], []
    for line in (block.group(1) if block else "").splitlines():
        line = line.strip()
        if not line.startswith("- "):
            continue
        item = line[2:].strip()
        if item.startswith("allow ") and "::" in item:
            where, rx = item[6:].split("::", 1)
            allowed.append((where.strip(), re.compile(rx.strip(), re.I)))
        elif item.startswith("re:"):
            banned.append((item, re.compile(item[3:].strip(), re.I)))
        else:
            banned.append((item, re.compile(r"\b" + re.escape(item) + r"\b", re.I)))
    return banned, allowed


def main(args: list[str]) -> int:
    files = [Path(a) for a in args] or sorted((ROOT / "watch" / "issues").glob("*.yml"))
    banned, allowed = rules()
    hits = 0
    for f in files:
        exceptions = [rx for where, rx in allowed if where == "*" or where in f.name]
        lines = f.read_text(encoding="utf-8").splitlines()
        for i, line in enumerate(lines):
            # join the next line too, so a phrase wrapped across two YAML lines is still caught
            window = line + " " + (lines[i + 1].strip() if i + 1 < len(lines) else "")
            for name, p in banned:
                for m in p.finditer(window):
                    if m.start() >= len(line):
                        break
                    if any(a.start() < m.end() and m.start() < a.end() for rx in exceptions for a in rx.finditer(window)):
                        continue
                    hits += 1
                    print(f"{f}:{i + 1}: banned ({name}): '{m.group(0)}' in: {line.strip()[:110]}")
    print(f"style check: {len(files)} file(s), {len(banned)} banned pattern(s), {len(allowed)} exception(s), {hits} hit(s)")
    return 1 if hits else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
