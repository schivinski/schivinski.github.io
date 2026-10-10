#!/usr/bin/env python3
"""Compare the website with ResearchGate and write RESEARCHGATE_TODO.md.

Usage: rg_sync.py researchgate_profile_text.txt
Input: the text of Bruno's ResearchGate "Research" tab (select all, copy, save as .txt). Output:
  * data/researchgate.json  snapshot (title, type, full-text status);
  * RESEARCHGATE_TODO.md    (1) works on the site but not on RG, (2) paper pages whose PDF should be uploaded to RG
                            because the RG record has no public full text.
RG has no public API and forbids automated access, so uploads stay manual; this list is what to upload.
"""
import difflib, glob, json, re, sys
from pathlib import Path
import yaml

sys.path.insert(0, str(Path(__file__).parent))
import fetch_publications as fp

ROOT = Path(__file__).resolve().parent.parent
TYPES = {"Article", "Chapter", "Conference Paper", "Technical Report", "Preprint", "Literature Review"}


def norm(t):
    return re.sub(r"[^a-z0-9 ]", "", t.lower().replace("’", "'"))


def sim(a, b):
    return difflib.SequenceMatcher(None, norm(a), norm(b)).ratio()


def parse(path):
    L = [l.strip() for l in Path(path).read_text().splitlines()]
    start = next((i for i, l in enumerate(L) if l == "Sorted by: Newest"), 0)
    out = []
    for i in range(start, len(L)):
        if L[i] in TYPES:
            j = i - 1
            while L[j] in ("", "New", "Source", "Publication Preview"):
                j -= 1
            nxt = L[i + 1:i + 8]
            ft = "public" if "Full-text available" in nxt else "private" if "Private full-text" in nxt else "none"
            out.append({"title": L[j], "type": L[i], "fulltext": ft})
    return out


def main(path):
    rg = parse(path)
    (ROOT / "data" / "researchgate.json").write_text(json.dumps(rg, indent=1, ensure_ascii=False))
    pubs = fp.with_extras(json.loads((ROOT / "data" / "publications.json").read_text()))
    vis = fp.visible(pubs)

    def find(title):
        b = max(rg, key=lambda r: sim(title, r["title"]))
        return b if sim(title, b["title"]) >= 0.85 or norm(b["title"]).startswith(norm(title)) or norm(title).startswith(norm(b["title"])) else None

    missing = [p for p in vis if not find(p["title"])]
    lines = ["# ResearchGate to-do", "", f"{len(rg)} items on ResearchGate; {len(vis)} on the website.", "",
             "## 1. On the website, not on ResearchGate (add the record, then the full text)", ""]
    lines += [f"- {p['year']} · {p['type']} · {p['title']} — {p['venue']} (DOI {p['doi'] or '—'})" for p in missing] or ["- none"]
    lines += ["", "## 2. Paper pages with a PDF to upload to ResearchGate", "",
              "| Paper | PDF on the site | RG now | Action |", "|---|---|---|---|"]
    for f in sorted(glob.glob(str(ROOT / "papers" / "data" / "*.yml"))):
        d = yaml.safe_load(Path(f).read_text())
        if d.get("status") != "locked" or not d.get("aam"):
            continue
        r = find(d["title"])
        state = "not on RG" if not r else {"public": "full text public", "private": "private full text", "none": "no full text"}[r["fulltext"]]
        action = "add record + upload" if not r else "—" if r["fulltext"] == "public" else "upload PDF, set public"
        lines.append(f"| {d['title'][:70]} | {d['aam']['file']} ({'open access' if d.get('open_access') else 'accepted manuscript'}) | {state} | {action} |")
    (ROOT / "RESEARCHGATE_TODO.md").write_text("\n".join(lines) + "\n")
    print(f"{len(rg)} RG items; {len(missing)} site items missing from RG")


if __name__ == "__main__":
    main(sys.argv[1])
