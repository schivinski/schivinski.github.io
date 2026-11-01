#!/usr/bin/env python3
"""Parse a printed Google Scholar profile (PDF, 'Print to PDF' of the full article list) into data/scholar.yml.

Usage: parse_scholar_pdf.py scholar.pdf
Matches each Scholar row to the ORCID list (data/publications.json) by DOI-less title similarity, keeps the profile totals,
and writes every row (title, authors, venue, year, citations, doi when matched). Rows are never dropped here: spam and
duplicates stay in the snapshot so the counts stay comparable with Scholar; data/scholar_hide.txt decides what the site shows.
"""
import difflib, json, re, sys
from pathlib import Path
import pymupdf as fitz
import yaml

ROOT = Path(__file__).resolve().parent.parent


def norm(t):
    return re.sub(r"[^a-z0-9 ]", "", re.sub(r"\s+", " ", t.lower().replace("’", "'"))).strip()


def parse(pdf):
    d = fitz.open(pdf)
    totals, rows, cur = {}, [], None
    first = d[0].get_text()
    nums = re.findall(r"^\s*(\d+)\s*$", first.split("Cytowania")[1].split("Bruno")[0], re.M) if "Cytowania" in first else []
    if len(nums) >= 6:
        totals = {"citations": int(nums[0]), "h_index": int(nums[2]), "i10_index": int(nums[4])}
    for page in d:
        lines = []
        for b in page.get_text("dict")["blocks"]:
            for l in b.get("lines", []):
                t = "".join(s["text"] for s in l["spans"]).strip()
                if not t or t == "+":
                    continue
                lines.append((l["bbox"][0], l["bbox"][1], round(l["spans"][0]["size"], 1), t))
        lines.sort(key=lambda x: (x[1], x[0]))
        page_rows, nums = [], []
        for x, y, size, t in lines:
            if y < 50 or y > 810 or t.startswith(("TYTUŁ", "CYTOWANE", "ROK", "10/10", "https://", "‪Bruno")):
                continue
            if size >= 8.8 and x < 60:
                if cur is None or cur["stage"] != "title":
                    cur = {"title": t, "stage": "title", "meta": [], "count": 0, "year": None, "y": y}
                    rows.append(cur); page_rows.append(cur)
                else:
                    cur["title"] += " " + t
            elif cur is not None and x < 60 and size < 8.8:
                cur["stage"] = "meta"
                cur["meta"].append(t)
            elif x > 520 and re.fullmatch(r"(19|20)\d\d", t):
                nums.append(("year", y, int(t)))
            elif 470 < x < 520 and re.fullmatch(r"\d{1,5}", t):
                nums.append(("count", y, int(t)))
        for kind, y, v in nums:      # a count/year line belongs to the row whose title starts nearest to it
            if page_rows:
                min(page_rows, key=lambda r: abs(r["y"] - y))[kind] = v
    out = []
    for r in rows:
        meta = r["meta"]
        out.append({"title": re.sub(r"\s+", " ", r["title"]).strip(), "authors": meta[0] if meta else "",
                    "venue": " ".join(meta[1:]), "year": r["year"], "citations": r["count"]})
    return totals, out


def pub_key(p):
    return (p.get("doi") or "").lower() or "t:" + norm(p["title"])[:80]


def main(pdf, as_of):
    totals, rows = parse(pdf)
    pubs = json.loads((ROOT / "data" / "publications.json").read_text())
    extra = ROOT / "data" / "extra_publications.yml"
    if extra.exists():
        pubs += yaml.safe_load(extra.read_text()) or []
    pubs = [p for p in pubs if p["type"] in ("journal-article", "book-chapter", "conference-paper")]
    papers, dup_counts, unmatched = {}, [], []
    for r in rows:
        best = max(pubs, key=lambda p: difflib.SequenceMatcher(None, norm(r["title"]), norm(p["title"])).ratio())
        ratio = difflib.SequenceMatcher(None, norm(r["title"]), norm(best["title"])).ratio()
        if ratio < 0.9 and not norm(r["title"]).startswith(norm(best["title"])):
            unmatched.append({"title": r["title"], "year": r["year"], "citations": r["citations"], "venue": r["venue"]})
            continue
        k = pub_key(best)
        if k in papers:                      # a second Scholar row for the same work (another version)
            if r["citations"] > papers[k]:
                dup_counts.append(papers[k]); papers[k] = r["citations"]
            else:
                dup_counts.append(r["citations"])
        else:
            papers[k] = r["citations"]
    if len(rows) >= 100:     # Scholar prints at most 100 rows per page: works below the cut keep their earlier (small) counts
        old = (yaml.safe_load((ROOT / "data" / "scholar.yml").read_text()) or {}).get("papers") or {}
        cut = min(r["citations"] for r in rows)
        for k, v in old.items():
            if k not in papers and v <= max(cut, 1) + 2:
                papers[k] = v
    allc = sorted([r["citations"] for r in rows], reverse=True)
    h = sum(1 for i, c in enumerate(allc, 1) if c >= i)
    print(len(rows), "rows;", len(papers), "matched works;", len(dup_counts), "duplicate rows;", len(unmatched), "unmatched;",
          "computed h =", h, "Scholar h =", totals.get("h_index"))
    snap = {"as_of": as_of, "profile": "https://scholar.google.com/citations?user=f-iKGD8AAAAJ", "totals": totals,
            "papers": dict(sorted(papers.items(), key=lambda kv: -kv[1])),
            "other_counts": sorted([c for c in dup_counts + [u["citations"] for u in unmatched] if c], reverse=True)}
    header = ("# Google Scholar snapshot, parsed from Bruno's printed profile by scripts/parse_scholar_pdf.py.\n"
              "# papers: citations per work on the site (key = DOI, or t:<title> when the work has no DOI).\n"
              "# other_counts: citations of Scholar rows that are not a separate site work (duplicate versions, reports, media),\n"
              "# kept so the h-index computed here matches Scholar's.\n")
    (ROOT / "data" / "scholar.yml").write_text(header + yaml.safe_dump(snap, allow_unicode=True, sort_keys=False, width=200))
    audit = ["# Scholar rows not shown on the site (no matching ORCID/Crossref work)\n",
             "| Citations | Year | Title | Venue |", "|---:|---:|---|---|"]
    audit += [f"| {u['citations']} | {u['year'] or ''} | {u['title']} | {u['venue']} |" for u in unmatched]
    (ROOT / "data" / "scholar_unmatched.md").write_text("\n".join(audit) + "\n")
    (ROOT / "data" / "scholar_rows.yml").unlink(missing_ok=True)


if __name__ == "__main__":
    import datetime
    main(sys.argv[1], sys.argv[2] if len(sys.argv) > 2 else datetime.date.today().isoformat())
