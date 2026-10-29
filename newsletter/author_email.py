#!/usr/bin/env python3
"""Author thank-you email for a published Marketing in 3 issue, in the same design as the subscriber email.

  python newsletter/author_email.py --issue 43 --salutation "Professor Schivinski" [--out DIR]

Writes author-thankyou-<issue>.html and .txt (plus subject.txt) to DIR (default newsletter/out/). The text of the
message is the agreed template (project doc claude/mkt3-author-thankyou-template.md); the look (navy header bar with
the Marketing in 3 wordmark, issue hero, serif title, amber button, cream footer) is that of newsletter/send_issue.py,
so authors and subscribers get the same kind of email.

Sending: create a Gmail draft with the Gmail connector (htmlBody + body from these files), open it in Claude in Chrome,
switch From to hello@marketingin3.com, check To and Cc, send.
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "newsletter"))
from build_watch import dateline, esc  # noqa: E402
from send_issue import AMBER, AMBER_TEXT, INK, MUTED, PAPER, RULE, SANS, SERIF, SITE  # noqa: E402

OUT = ROOT / "newsletter" / "out"


def load_issue(n: int) -> dict:
    for f in sorted((ROOT / "watch" / "issues").glob("*.yml")):
        d = yaml.safe_load(f.read_text(encoding="utf-8"))
        if int(d["issue"]) == n:
            return d
    raise SystemExit(f"issue {n} not found")


def build(d: dict, salutation: str) -> tuple[str, str, str]:
    e = esc
    n = d["issue"]
    paper = d["paper"]
    title, journal = paper["title"], paper["journal"]
    url = f"{SITE}/watch/posts/{d['slug']}/"
    link = f"{url}?utm_source=marketing-in-3&utm_medium=author-email&utm_campaign=issue-{n}"
    img = d["image"]
    when = dateline(d)
    subject = "Your article is now featured in Marketing in 3"
    para = f"font-family:{SANS};font-size:16px;line-height:1.6;color:#2a3246;"

    text = (
        f"Dear {salutation},\n\n"
        "I hope you are well.\n"
        f"I am pleased to let you know that your article, \"{title}\", published in {journal}, is now featured "
        "in Marketing in 3:\n"
        f"{link}\n\n"
        "This is a fantastic piece of research, and I really enjoyed preparing the post. I hope you like it.\n"
        "In case you are new to Marketing in 3, each issue credits the authors by name with links to their ORCID "
        "profiles, and cites the original article with its DOI, so all the credit goes to you.\n\n"
        "Thank you and your research team for your engagement in advancing marketing knowledge, and "
        "congratulations on the fascinating publication.\n\n"
        "Kind regards,\nBruno Schivinski\nAssociate Professor in Marketing\nGdansk University of Technology\nPoland\n\n"
        "--\n"
        f"You are getting this one-off note because your article is featured in issue {n} of Marketing in 3. "
        "Reply to this email to reach me.\n"
        "Marketing in 3 by Bruno Schivinski · schivinski.com\n"
    )

    html = f"""<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"><meta name="color-scheme" content="light">
<meta name="supported-color-schemes" content="light"><title>{e(subject)}</title>
<style>a{{color:{INK};}} @media (max-width:620px){{.px{{padding-left:20px!important;padding-right:20px!important;}} .h1{{font-size:22px!important;}} .hd{{display:block!important;width:100%!important;text-align:left!important;}} .hk{{padding-top:4px!important;}}}}</style>
</head>
<body style="margin:0;padding:0;background:{PAPER};-webkit-text-size-adjust:100%;">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:{PAPER};"><tr><td align="center" style="padding:24px 12px;">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width:600px;background:#ffffff;border-radius:10px;overflow:hidden;">
<tr><td class="px" bgcolor="{INK}" style="background:{INK};padding:18px 32px;">
  <table role="presentation" width="100%" cellpadding="0" cellspacing="0"><tr>
  <td class="hd" style="white-space:nowrap;"><a href="{e(SITE)}/watch/?utm_source=marketing-in-3&amp;utm_medium=author-email" style="display:inline-block;background:#d71920;color:#ffffff;font-family:{SANS};font-size:18px;font-weight:700;line-height:1;text-decoration:none;padding:9px 14px;">Marketing in 3</a></td>
  <td class="hd hk" align="right" style="font-family:{SANS};font-size:12px;color:#c9cfdb;">Issue {n} · {e(when)}</td></tr></table>
</td></tr>
<tr><td><a href="{e(link)}"><img src="{SITE}/watch/images/{e(img['og'])}" width="600" alt="{e(img['alt'])}" style="display:block;width:100%;max-width:600px;height:auto;border:0;"></a></td></tr>
<tr><td class="px" style="padding:28px 32px 4px;">
  <h1 class="h1" style="margin:0 0 18px;font-family:{SERIF};font-size:26px;line-height:1.22;font-weight:600;color:{INK};">Your article is now featured in Marketing in 3</h1>
  <p style="margin:0 0 14px;{para}">Dear {e(salutation)},</p>
  <p style="margin:0 0 14px;{para}">I hope you are well. I am pleased to let you know that your article, &ldquo;{e(title)}&rdquo;, published in <em>{e(journal)}</em>, is now featured in Marketing in 3.</p>
</td></tr>
<tr><td class="px" align="left" style="padding:6px 32px 26px;">
  <table role="presentation" cellpadding="0" cellspacing="0"><tr><td style="border-radius:999px;background:{AMBER};">
  <a href="{e(link)}" style="display:inline-block;padding:14px 28px;font-family:{SANS};font-size:16px;font-weight:700;color:{INK};text-decoration:none;border-radius:999px;">Read the issue &rarr;</a>
  </td></tr></table>
</td></tr>
<tr><td class="px" style="padding:0 32px 6px;">
  <p style="margin:0 0 14px;{para}">This is a fantastic piece of research, and I really enjoyed preparing the post. I hope you like it.</p>
  <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:#fbf3e2;border-left:4px solid {AMBER};margin:0 0 16px;"><tr><td style="padding:14px 18px;{para}font-size:15px;">In case you are new to Marketing in 3: each issue credits the authors by name with links to their ORCID profiles, and cites the original article with its DOI, so all the credit goes to you.</td></tr></table>
  <p style="margin:0 0 20px;{para}">Thank you and your research team for your engagement in advancing marketing knowledge, and congratulations on the fascinating publication.</p>
  <p style="margin:0 0 26px;{para}">Kind regards,<br><strong style="font-family:{SERIF};font-size:17px;color:{INK};">Bruno Schivinski</strong><br><span style="font-size:14px;color:{MUTED};">Associate Professor in Marketing<br>Gdansk University of Technology, Poland</span></p>
</td></tr>
<tr><td class="px" style="background:{PAPER};padding:22px 32px 26px;font-family:{SANS};font-size:13px;line-height:1.6;color:{MUTED};">
  You are getting this one-off note because your article is featured in issue {n} of Marketing in 3. Reply to this email to reach me.<br>
  <a href="{e(SITE)}/watch/?utm_source=marketing-in-3&amp;utm_medium=author-email" style="color:{MUTED};">All issues</a><br>
  Marketing in 3 by Bruno Schivinski · <a href="{e(SITE)}/" style="color:{MUTED};">schivinski.com</a>
</td></tr>
</table></td></tr></table></body></html>
"""
    return subject, text, html


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--issue", type=int, required=True)
    ap.add_argument("--salutation", required=True, help='e.g. "Professor Schivinski"')
    ap.add_argument("--out", default=str(OUT))
    a = ap.parse_args()
    d = load_issue(a.issue)
    subject, text, html = build(d, a.salutation)
    out = Path(a.out)
    out.mkdir(parents=True, exist_ok=True)
    (out / f"author-thankyou-{a.issue}.html").write_text(html, encoding="utf-8")
    (out / f"author-thankyou-{a.issue}.txt").write_text(text, encoding="utf-8")
    (out / f"author-thankyou-{a.issue}.subject.txt").write_text(subject, encoding="utf-8")
    print(f"wrote {out}/author-thankyou-{a.issue}.[html|txt]")


if __name__ == "__main__":
    main()
