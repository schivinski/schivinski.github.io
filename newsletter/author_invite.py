#!/usr/bin/env python3
"""Invitation to the authors of a planned Marketing in 3 issue: a sentence or two for readers, and a headshot.

  python newsletter/author_invite.py --issue 55 --title "..." --journal "..." --date 2026-12-10 \
      --salutation "Professor Preiksaitis" --cc "a@uni.edu" [--out DIR]

Bruno, 25 Nov 2026: wording calibrated by him; then (same day, after the first mock) "add the link to Marketing in 3 in
the text", "add a nice template to it, so it looks professional", send it from hello@marketingin3.com with Cc to
hello@schivinski.com, and sign with his Gdańsk Tech (PG) signature as in his Outlook. Project doc
claude/mkt3-author-invite-template.md.

Sent automatically by the Monday task "Marketing in 3: author comment invitations" (7 to 14 days before the issue).
The email is HTML in the Marketing in 3 design (navy header bar with the red wordmark, serif heading, the question in bold
body text (Bruno, 25 Nov 2026: no box, no label), footer), like the thank-you; it has no hero picture because the issue is not built yet. It is sent the same way
as the thank-you: Gmail connector draft for the addresses, then the exact HTML pasted in Claude in Chrome with the
generated .paste.js (the connector would rewrite links and drop images), From hello@marketingin3.com.

--cc lists the CO-AUTHORS copied (or "none"); it drives the greeting rule of 2 Nov 2026 ("Dear Professor X and
colleagues," when any co-author is copied). hello@schivinski.com is always added to Cc on top (ALWAYS_CC) and does not
change the greeting. The reply-by date is three days before the issue. Never for Bruno's own or co-authored papers.

The signature is his PG one, without his PG email address: replies must come to hello@marketingin3.com so the daily
reply check finds them, and his work address is never published (standing rule).

Writes author-invite-<issue>.html, .txt, .subject.txt, .cc.txt (every Cc address) and .paste.js to DIR
(default newsletter/out/).

Late replies: when a comment arrives after the issue is live, add it, republish, then send the short note
  python newsletter/author_invite.py --issue 55 --live --slug brandfests-taco-bell --salutation "..." --cc "..."
which writes author-comment-live-<issue>.[html|txt|subject.txt|cc.txt|paste.js] in the same design.
"""
from __future__ import annotations

import argparse
import datetime as dt
import sys
from pathlib import Path
from urllib.parse import quote

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "newsletter"))
from author_email import paste_js  # noqa: E402
from build_watch import esc  # noqa: E402
from send_issue import AMBER, AMBER_TEXT, INK, MUTED, PAPER, RULE, SANS, SERIF, SITE  # noqa: E402

OUT = ROOT / "newsletter" / "out"
SUBJECT = "One sentence from you for Marketing in 3?"
ALWAYS_CC = "hello@schivinski.com"   # Bruno, 25 Nov 2026
PARA = f"font-family:{SANS};font-size:16px;line-height:1.6;color:#2a3246;"
SIG_FONT = "Arial,Helvetica,sans-serif"


def nice(d: dt.date) -> str:
    """2026-12-17 -> 'Thursday 17 December' (no year: the date is always within a few weeks)."""
    return f"{d.strftime('%A')} {d.day} {d.strftime('%B')}"


def greeting(salutation: str, cc: list[str]) -> str:
    s = salutation.strip().removeprefix("Dear ").rstrip(",").strip()
    if cc and "colleagues" not in s:
        s += " and colleagues"
    return s


# ---------------------------------------------------------------- signature (PG, as in Bruno's Outlook)
SIG_TEXT = (
    "dr Bruno Schivinski\n"
    "Professor PG\n\n"
    "Faculty of Management and Economics\n"
    "Gdańsk University of Technology\n"
    "G. Narutowicza 11/12, 80-233 Gdańsk, Poland\n"
    "www.pg.edu.pl\n"
)


def sig_html() -> str:
    small = f"font-family:{SIG_FONT};font-size:13px;line-height:1.5;color:#000000;"
    return (
        f'<p style="margin:0 0 2px;font-family:{SIG_FONT};font-size:15px;line-height:1.4;color:#000000;"><strong>dr Bruno Schivinski</strong><br>'
        f'<span style="font-size:14px;">Professor PG</span></p>'
        f'<img src="{SITE}/assets/email/pg-signature-logo.png" width="260" alt="Gdańsk Tech, Faculty of Management and Economics" '
        f'style="display:block;width:260px;max-width:100%;height:auto;border:0;margin:14px 0 12px;">'
        f'<p style="margin:0 0 8px;{small}">Faculty of Management and Economics<br>Gdańsk University of Technology<br>'
        f'G. Narutowicza 11/12, 80-233 Gdańsk, Poland</p>'
        f'<p style="margin:0 0 14px;{small}"><a href="https://pg.edu.pl/" style="color:#000000;text-decoration:none;">www.pg.edu.pl</a></p>'
        f'<img src="{SITE}/assets/email/pg-accreditations.png" width="330" alt="AMBA accredited, CEEMAN, AACSB Business Education Alliance member, EFMD Global" '
        f'style="display:block;width:330px;max-width:100%;height:auto;border:0;">'
    )


# ---------------------------------------------------------------- shared frame
def frame(kicker: str, subject: str, inner: str, footer: str, home: str) -> str:
    e = esc
    return f"""<!doctype html>
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
  <td class="hd" style="white-space:nowrap;"><a href="{e(home)}" style="display:inline-block;background:#d71920;color:#ffffff;font-family:{SANS};font-size:18px;font-weight:700;line-height:1;text-decoration:none;padding:9px 14px;">Marketing in 3</a></td>
  <td class="hd hk" align="right" style="font-family:{SANS};font-size:12px;color:#c9cfdb;">{e(kicker)}</td></tr></table>
</td></tr>
<tr><td style="background:{AMBER};height:4px;line-height:4px;font-size:4px;">&nbsp;</td></tr>
{inner}
<tr><td class="px" style="background:{PAPER};padding:22px 32px 26px;font-family:{SANS};font-size:13px;line-height:1.6;color:{MUTED};">
  {footer}<br>
  <a href="{e(home)}" style="color:{MUTED};">All issues</a> &nbsp;·&nbsp; Marketing in 3 by Bruno Schivinski · <a href="{SITE}/" style="color:{MUTED};">schivinski.com</a>
</td></tr>
</table></td></tr></table></body></html>
"""


# ---------------------------------------------------------------- the invitation
def build(n: int, title: str, journal: str, issue_date: dt.date, salutation: str) -> tuple[str, str, str]:
    e = esc
    reply_by = issue_date - dt.timedelta(days=3)
    home = f"{SITE}/watch/?utm_source=marketing-in-3&utm_medium=email&utm_campaign=author-invite-{n}"
    kicker = f"Issue {n} · {issue_date.strftime('%A')} {issue_date.day} {issue_date.strftime('%B %Y')}"
    m3 = f'<a href="{e(home)}" style="color:{INK};font-weight:700;text-decoration:underline;text-decoration-color:{AMBER};">Marketing in 3</a>'

    inner = f"""<tr><td class="px" style="padding:30px 32px 4px;">
  <p style="margin:0 0 10px;font-family:{SANS};font-size:12px;letter-spacing:.08em;text-transform:uppercase;color:{AMBER_TEXT};font-weight:700;">An invitation to contribute</p>
  <h1 class="h1" style="margin:0 0 20px;font-family:{SERIF};font-size:26px;line-height:1.22;font-weight:600;color:{INK};">Your article will be featured in Marketing in 3</h1>
  <p style="margin:0 0 14px;{PARA}">Dear {e(salutation)},</p>
  <p style="margin:0 0 14px;{PARA}">I hope you are well.</p>
  <p style="margin:0 0 14px;{PARA}">It is a great pleasure to let you know that your article, &ldquo;{e(title)}&rdquo;, published in <em>{e(journal)}</em>, will be featured in {m3} on <strong>{e(nice(issue_date))}</strong>.</p>
  <p style="margin:0 0 14px;{PARA}">Would you add a sentence or two for our readers, who are mostly marketing practitioners?</p>
  <p style="margin:0 0 14px;{PARA}"><strong>If a marketing manager could change one thing because of your study, what should it be?</strong></p>
  <p style="margin:0 0 14px;{PARA}">Simply reply to this email with your answer.</p>
  <p style="margin:0 0 14px;{PARA}">If you are happy to, please also attach a headshot, and I will place it next to your comment.</p>
  <p style="margin:0 0 14px;{PARA}">I will print your comment in the issue as you write it, with your name and university. A short reply by <strong>{e(nice(reply_by))}</strong> is all it takes. If you are busy, there is no need to reply; that is perfectly fine. I will send you the link on the day the issue goes live.</p>
  <p style="margin:0 0 22px;{PARA}">Once again, congratulations on the fascinating study.</p>
  <p style="margin:0 0 18px;{PARA}">Warmest regards,</p>
</td></tr>
<tr><td class="px" style="padding:0 32px 28px;">{sig_html()}</td></tr>"""
    footer = (f"You are getting this one-off note because your article will be featured in issue {n} of Marketing in 3. "
              "Reply to this email to reach me.")
    html = frame(kicker, SUBJECT, inner, footer, home)

    text = (
        f"Dear {salutation},\n\n"
        "I hope you are well.\n\n"
        f"It is a great pleasure to let you know that your article, \"{title}\", published in {journal}, "
        f"will be featured in Marketing in 3 ({SITE}/watch/) on {nice(issue_date)}.\n\n"
        "Would you add a sentence or two for our readers, who are mostly marketing practitioners?\n\n"
        "If a marketing manager could change one thing because of your study, what should it be?\n\n"
        "Simply reply to this email with your answer.\n\n"
        "If you are happy to, please also attach a headshot, and I will place it next to your comment.\n\n"
        "I will print your comment in the issue as you write it, with your name and university. "
        f"A short reply by {nice(reply_by)} is all it takes. If you are busy, there is no need to reply; "
        "that is perfectly fine. I will send you the link on the day the issue goes live.\n\n"
        "Once again, congratulations on the fascinating study.\n\n"
        "Warmest regards,\n\n" + SIG_TEXT
    )
    return SUBJECT, text, html


# ---------------------------------------------------------------- late-comment note
def live_note(n: int, slug: str, salutation: str) -> tuple[str, str, str]:
    """Short note when a late comment has been added to an issue that is already live."""
    e = esc
    base = f"{SITE}/watch/posts/{slug}/"
    link = f"{base}?utm_source=marketing-in-3&utm_medium=email&utm_campaign=author-comment-{n}"
    li = f"{base}?utm_source=linkedin&utm_medium=social&utm_campaign=author-issue-{n}"
    share = "https://www.linkedin.com/sharing/share-offsite/?url=" + quote(li, safe="")
    home = f"{SITE}/watch/?utm_source=marketing-in-3&utm_medium=email&utm_campaign=author-comment-{n}"
    subject = "Your comment is now live in Marketing in 3"
    inner = f"""<tr><td class="px" style="padding:30px 32px 4px;">
  <h1 class="h1" style="margin:0 0 20px;font-family:{SERIF};font-size:26px;line-height:1.22;font-weight:600;color:{INK};">Your comment is now live</h1>
  <p style="margin:0 0 14px;{PARA}">Dear {e(salutation)},</p>
  <p style="margin:0 0 18px;{PARA}">Thank you for your comment. It is now live in the issue, next to your name.</p>
  <table role="presentation" cellpadding="0" cellspacing="0" style="margin:0 0 18px;"><tr><td style="border-radius:999px;background:{AMBER};">
  <a href="{e(link)}" style="display:inline-block;padding:14px 28px;font-family:{SANS};font-size:16px;font-weight:700;color:{INK};text-decoration:none;border-radius:999px;">Read the issue &rarr;</a>
  </td></tr></table>
  <p style="margin:0 0 12px;{PARA}">If you would like to share it with your network, this button opens a LinkedIn post with the issue already attached.</p>
  <table role="presentation" cellpadding="0" cellspacing="0" style="margin:0 0 22px;"><tr><td style="border-radius:999px;background:#0a66c2;">
  <a href="{e(share)}" style="display:inline-block;padding:12px 24px;font-family:{SANS};font-size:15px;font-weight:700;color:#ffffff;text-decoration:none;border-radius:999px;">Share on LinkedIn</a>
  </td></tr></table>
  <p style="margin:0 0 18px;{PARA}">Warmest regards,</p>
</td></tr>
<tr><td class="px" style="padding:0 32px 28px;">{sig_html()}</td></tr>"""
    footer = f"You are getting this one-off note because your comment is featured in issue {n} of Marketing in 3. Reply to this email to reach me."
    html = frame(f"Issue {n}", subject, inner, footer, home)
    text = (
        f"Dear {salutation},\n\n"
        "Thank you for your comment. It is now live in the issue, next to your name:\n"
        f"{link}\n\n"
        "If you would like to share it with your network, this link opens a LinkedIn post with the issue already "
        f"attached:\n{share}\n\n"
        "Warmest regards,\n\n" + SIG_TEXT
    )
    return subject, text, html


def write(out: Path, stem: str, subject: str, text: str, html: str, cc: list[str]) -> None:
    (out / f"{stem}.html").write_text(html, encoding="utf-8")
    (out / f"{stem}.txt").write_text(text, encoding="utf-8")
    (out / f"{stem}.subject.txt").write_text(subject, encoding="utf-8")
    (out / f"{stem}.cc.txt").write_text(", ".join(cc + [ALWAYS_CC]), encoding="utf-8")
    (out / f"{stem}.paste.js").write_text(paste_js(html), encoding="utf-8")
    print(f"Cc to send: {', '.join(cc + [ALWAYS_CC])}")
    print(f"wrote {out}/{stem}.[html|txt|subject.txt|cc.txt|paste.js]")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--issue", type=int, required=True)
    ap.add_argument("--title", help="the article title as published")
    ap.add_argument("--journal")
    ap.add_argument("--date", help="issue date, YYYY-MM-DD")
    ap.add_argument("--live", action="store_true", help="write the 'your comment is now live' note instead")
    ap.add_argument("--slug", help="issue slug (with --live)")
    ap.add_argument("--salutation", required=True, help='corresponding author, e.g. "Professor Yuan"')
    ap.add_argument("--cc", required=True,
                    help=f'co-author addresses being copied, comma-separated, or "none" ({ALWAYS_CC} is always added)')
    ap.add_argument("--out", default=str(OUT))
    a = ap.parse_args()
    cc = [x.strip() for x in a.cc.split(",") if x.strip() and x.strip().lower() != "none" and x.strip() != ALWAYS_CC]
    out = Path(a.out)
    out.mkdir(parents=True, exist_ok=True)
    salutation = greeting(a.salutation, cc)
    print(f"greeting: Dear {salutation},")
    if a.live:
        if not a.slug:
            raise SystemExit("--live needs --slug")
        write(out, f"author-comment-live-{a.issue}", *live_note(a.issue, a.slug, salutation), cc)
        return
    if not (a.title and a.journal and a.date):
        raise SystemExit("the invitation needs --title, --journal and --date")
    write(out, f"author-invite-{a.issue}", *build(a.issue, a.title, a.journal, dt.date.fromisoformat(a.date), salutation), cc)


if __name__ == "__main__":
    main()
