#!/usr/bin/env python3
"""Invitation to the authors of a planned Marketing in 3 issue: a sentence or two for readers, and a headshot.

  python newsletter/author_invite.py --issue 55 --title "..." --journal "..." --date 2026-12-10 \
      --salutation "Professor Preiksaitis" --cc "a@uni.edu" [--out DIR]

Bruno, 25 Nov 2026 (wording calibrated by him the same day; project doc claude/mkt3-author-invite-template.md).
Sent about ten days before the issue date, from hello@marketingin3.com, as a plain-text email (it is a personal ask,
so it does not use the newsletter design). The reply-by date is three days before the issue. --cc follows the
greeting rule of 2 Nov 2026: with co-authors copied the greeting reads "Dear Professor X and colleagues,".
Never for Bruno's own or co-authored papers.

Writes author-invite-<issue>.txt and author-invite-<issue>.subject.txt to DIR (default newsletter/out/).

Late replies: when a comment arrives after the issue is live, add it, republish, then send the short note
  python newsletter/author_invite.py --issue 55 --live --slug brandfests-taco-bell --salutation "..." --cc "..."
which writes author-comment-live-<issue>.txt and .subject.txt.
"""
from __future__ import annotations

import argparse
import datetime as dt
from pathlib import Path
from urllib.parse import quote

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "newsletter" / "out"
SUBJECT = "One sentence from you for Marketing in 3?"


def nice(d: dt.date) -> str:
    """2026-12-17 -> 'Thursday 17 December' (no year: the date is always within a few weeks)."""
    return f"{d.strftime('%A')} {d.day} {d.strftime('%B')}"


def greeting(salutation: str, cc: list[str]) -> str:
    s = salutation.strip().removeprefix("Dear ").rstrip(",").strip()
    if cc and "colleagues" not in s:
        s += " and colleagues"
    return s


def build(title: str, journal: str, issue_date: dt.date, salutation: str) -> tuple[str, str]:
    reply_by = issue_date - dt.timedelta(days=3)
    text = (
        f"Dear {salutation},\n\n"
        "I hope you are well.\n\n"
        f"It is a great pleasure to let you know that your article, \"{title}\", published in {journal}, "
        f"will be featured in Marketing in 3 on {nice(issue_date)}.\n\n"
        "Would you add a sentence or two for our readers, who are mostly marketing practitioners? "
        "Just one question: if a marketing manager could change one thing because of your study, what should it be?\n\n"
        "If you are happy to, please also attach a headshot, and I will place it next to your comment.\n\n"
        "I will print your comment in the issue as you write it, with your name and university. "
        f"A short reply by {nice(reply_by)} is all it takes. If you are busy, there is no need to reply; "
        "that is perfectly fine. I will send you the link on the day the issue goes live.\n\n"
        "Once again, congratulations on the fascinating study.\n\n"
        "Warmest regards,\n"
        "Bruno Schivinski\n"
        "Associate Professor in Marketing\n"
        "Gdansk University of Technology\n"
        "Poland\n"
        "https://schivinski.com/watch/\n"
    )
    return SUBJECT, text


def live_note(n: int, slug: str, salutation: str) -> tuple[str, str]:
    """Short note when a late comment has been added to an issue that is already live."""
    base = f"https://schivinski.com/watch/posts/{slug}/"
    link = f"{base}?utm_source=marketing-in-3&utm_medium=email&utm_campaign=author-comment-{n}"
    li = f"{base}?utm_source=linkedin&utm_medium=social&utm_campaign=author-issue-{n}"
    share = "https://www.linkedin.com/sharing/share-offsite/?url=" + quote(li, safe="")
    text = (
        f"Dear {salutation},\n\n"
        "Thank you for your comment. It is now live in the issue, next to your name:\n"
        f"{link}\n\n"
        "If you would like to share it with your network, this link opens a LinkedIn post with the issue already "
        f"attached:\n{share}\n\n"
        "Warmest regards,\n"
        "Bruno Schivinski\n"
        "Associate Professor in Marketing\n"
        "Gdansk University of Technology\n"
        "Poland\n"
    )
    return "Your comment is now live in Marketing in 3", text


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--issue", type=int, required=True)
    ap.add_argument("--title", help="the article title as published")
    ap.add_argument("--journal")
    ap.add_argument("--date", help="issue date, YYYY-MM-DD")
    ap.add_argument("--live", action="store_true", help="write the 'your comment is now live' note instead")
    ap.add_argument("--slug", help="issue slug (with --live)")
    ap.add_argument("--salutation", required=True, help='corresponding author, e.g. "Professor Yuan"')
    ap.add_argument("--cc", required=True, help='co-author addresses being copied, comma-separated, or "none"')
    ap.add_argument("--out", default=str(OUT))
    a = ap.parse_args()
    cc = [x.strip() for x in a.cc.split(",") if x.strip() and x.strip().lower() != "none"]
    out = Path(a.out)
    out.mkdir(parents=True, exist_ok=True)
    if a.live:
        if not a.slug:
            raise SystemExit("--live needs --slug")
        subject, text = live_note(a.issue, a.slug, greeting(a.salutation, cc))
        (out / f"author-comment-live-{a.issue}.txt").write_text(text, encoding="utf-8")
        (out / f"author-comment-live-{a.issue}.subject.txt").write_text(subject, encoding="utf-8")
        print(f"wrote {out}/author-comment-live-{a.issue}.[txt|subject.txt]")
        return
    if not (a.title and a.journal and a.date):
        raise SystemExit("the invitation needs --title, --journal and --date")
    subject, text = build(a.title, a.journal, dt.date.fromisoformat(a.date), greeting(a.salutation, cc))
    (out / f"author-invite-{a.issue}.txt").write_text(text, encoding="utf-8")
    (out / f"author-invite-{a.issue}.subject.txt").write_text(subject, encoding="utf-8")
    print(f"greeting: Dear {greeting(a.salutation, cc)},  (Cc: {', '.join(cc) or 'none'})")
    print(f"wrote {out}/author-invite-{a.issue}.[txt|subject.txt]")


if __name__ == "__main__":
    main()
