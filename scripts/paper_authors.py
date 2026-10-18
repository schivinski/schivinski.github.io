#!/usr/bin/env python3
"""Draft the `paper.researchers` block of a Marketing in 3 issue from OpenAlex and Crossref.

Usage: python scripts/paper_authors.py <doi>

Prints YAML with each author's name, affiliation and ORCID. It is a starting point only: names and affiliations must be
checked against the paper itself (the published byline and affiliation footnotes win), and an ORCID is kept only when a
registry lists it for that author. Authors without an ORCID keep an empty `orcid`, and the page shows their name unlinked.
"""
import json, sys, urllib.request

UA = {"User-Agent": "schivinski.com Marketing in 3 (mailto:bruno.schivinski@pg.edu.pl)"}


def get(url: str) -> dict:
    with urllib.request.urlopen(urllib.request.Request(url, headers=UA), timeout=30) as r:
        return json.load(r)


def main(doi: str) -> None:
    oa = get(f"https://api.openalex.org/works/doi:{doi}")
    try:
        cr = get(f"https://api.crossref.org/works/{doi}")["message"].get("author", [])
    except Exception:
        cr = []
    cr_orcid = {(a.get("family") or "").lower(): a.get("ORCID", "") for a in cr}
    cr_aff = {(a.get("family") or "").lower(): "; ".join(x.get("name", "") for x in a.get("affiliation", [])) for a in cr}
    print("  researchers:   # check every line against the paper's byline and affiliations")
    for au in oa.get("authorships", []):
        name = au["author"]["display_name"]
        fam = name.split()[-1].lower()
        orcid = (au["author"].get("orcid") or cr_orcid.get(fam) or "").replace("http://", "https://")
        raw = au.get("raw_affiliation_strings") or []
        aff = raw[0] if raw else (cr_aff.get(fam) or "; ".join(i["display_name"] for i in au.get("institutions", [])))
        print(f'    - name: "{name}"')
        print(f'      affiliation: "{aff}"')
        print(f'      orcid: "{orcid.rsplit("/", 1)[-1] if orcid else ""}"')


if __name__ == "__main__":
    main(sys.argv[1])
