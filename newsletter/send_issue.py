#!/usr/bin/env python3
"""Email the current Marketing in 3 issue to everyone on the list (Amazon SES).

Run by the publish workflow after the site is deployed (job "newsletter"), and by hand through the
"Marketing in 3 email" workflow for tests. Settings: watch/newsletter.yml.

  python newsletter/send_issue.py --preview            build the email for the current issue into newsletter/out/
  python newsletter/send_issue.py --preview --issue 41 the same for a given issue
  python newsletter/send_issue.py --test [--issue N]   send one copy to `test_to` (works in the SES sandbox)
  python newsletter/send_issue.py                      send the current week's issue to the list, once
  python newsletter/send_issue.py --resume             finish a send that stopped part-way

Rules:
  * Only an issue whose "week of" is the current week is emailed (window in newsletter.yml), so issues added for
    earlier weeks never go out. Its page must already be live.
  * Each issue is sent once: the first run records it in DynamoDB (sent#<issue>) before sending anything.
  * Every email carries SES's unsubscribe link and one-click unsubscribe header (list management), and SES will
    not deliver to anyone who has left the list or bounced.
  * Nothing about subscribers is printed or stored here; logs show counts only.
"""
from __future__ import annotations

import argparse
import datetime as dt
import html
import os
import re
import sys
import time
import urllib.request
from pathlib import Path
from zoneinfo import ZoneInfo

import yaml

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
from build_watch import long_date, md, plain  # noqa: E402

SITE = "https://schivinski.com"
ISSUES = ROOT / "watch" / "issues"
OUT = ROOT / "newsletter" / "out"
TZ = ZoneInfo("Australia/Melbourne")
INK, INK_SOFT, AMBER, AMBER_TEXT, MUTED, RULE, PAPER, CREAM = (
    "#15203b", "#26345a", "#e0a12a", "#8a5a00", "#5b6476", "#dde1e8", "#f6f4ef", "#fbf3e2")
SERIF = "Georgia,'Times New Roman',serif"
SANS = "-apple-system,'Segoe UI',Roboto,Helvetica,Arial,sans-serif"


def config() -> dict:
    return yaml.safe_load((ROOT / "watch" / "newsletter.yml").read_text(encoding="utf-8")) or {}


def support_url() -> str:
    f = ROOT / "watch" / "support.yml"
    return ((yaml.safe_load(f.read_text(encoding="utf-8")) or {}).get("url") or "") if f.exists() else ""


def live_issues() -> list[dict]:
    out = []
    for f in sorted(ISSUES.glob("*.yml")):
        d = yaml.safe_load(f.read_text(encoding="utf-8"))
        if d.get("status") == "live":
            out.append(d)
    return sorted(out, key=lambda d: d["week_of"])


def current_issue(issues: list[dict], cfg: dict, today: dt.date) -> dict | None:
    before, after = int(cfg.get("window_days_before", 2)), int(cfg.get("window_days_after", 6))
    hits = [d for d in issues
            if -before <= (today - dt.date.fromisoformat(d["week_of"])).days <= after]
    return hits[-1] if hits else None


def issue_url(d: dict, campaign: bool = True) -> str:
    u = f"{SITE}/watch/posts/{d['slug']}/"
    return u + (f"?utm_source=marketing-in-3&utm_medium=email&utm_campaign=issue-{d['issue']}" if campaign else "")


# ------------------------------------------------------------------ the email
def build_email(d: dict, unsubscribe: str = "{{amazonSESUnsubscribeUrl}}") -> tuple[str, str, str]:
    """(subject, html, text) for one issue. `unsubscribe` is SES's placeholder, filled in per reader."""
    url = issue_url(d)
    kicker = f"Issue {d['issue']} · Week of {long_date(d['week_of'])}"
    subject = d["short_title"]
    pre = plain(d["description"])
    img = d["image"]
    coffee = support_url()
    e = lambda s: html.escape(str(s), quote=True)  # noqa: E731

    takeaways = "".join(
        f'<tr><td valign="top" style="padding:0 10px 12px 0;color:{AMBER};font-size:18px;line-height:1.4;">&#9679;</td>'
        f'<td style="padding:0 0 12px;font-family:{SANS};font-size:16px;line-height:1.55;color:#2a3246;">{md(t)}</td></tr>'
        for t in d["takeaways"])
    also = "".join(
        f'<tr><td style="padding:0 0 16px;font-family:{SANS};">'
        f'<a href="https://doi.org/{e(a["doi"])}" style="font-family:{SERIF};font-size:17px;line-height:1.35;color:{INK};'
        f'text-decoration:underline;text-decoration-color:{AMBER};">{e(a["title"])}</a>'
        f'<div style="font-size:13px;color:{MUTED};padding-top:3px;">{e(a["authors"])} · <em>{e(a["journal"])}</em>, {e(a["year"])}</div>'
        f'</td></tr>'
        for a in d.get("also") or [])
    also_block = (f'<tr><td class="px" style="padding:24px 32px 8px;"><h2 style="margin:0 0 14px;font-family:{SANS};font-size:12px;'
                  f'letter-spacing:.08em;text-transform:uppercase;color:{MUTED};font-weight:700;">Also new this week</h2>'
                  f'<table role="presentation" width="100%" cellpadding="0" cellspacing="0">{also}</table></td></tr>'
                  if also else "")
    coffee_block = (f'<tr><td class="px" style="padding:4px 32px 24px;font-family:{SANS};font-size:14px;line-height:1.5;color:{MUTED};">'
                    f'Marketing in 3 is free and ad-free. If it earns its place in your inbox, '
                    f'<a href="{e(coffee)}" style="color:{AMBER_TEXT};font-weight:700;">buy me a coffee</a>.</td></tr>'
                    if coffee else "")

    body = f"""<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"><meta name="color-scheme" content="light">
<meta name="supported-color-schemes" content="light"><title>{e(subject)}</title>
<style>a{{color:{INK};}} @media (max-width:620px){{.px{{padding-left:20px!important;padding-right:20px!important;}} .h1{{font-size:24px!important;}} .hd{{display:block!important;width:100%!important;text-align:left!important;}} .hk{{padding-top:4px!important;}}}}</style>
</head>
<body style="margin:0;padding:0;background:{PAPER};-webkit-text-size-adjust:100%;">
<div style="display:none;max-height:0;overflow:hidden;opacity:0;">{e(pre)}&#8199;&#65279;&#847; &#8199;&#65279;&#847; &#8199;&#65279;&#847;</div>
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:{PAPER};"><tr><td align="center" style="padding:24px 12px;">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width:600px;background:#ffffff;border-radius:10px;overflow:hidden;">
<tr><td class="px" style="background:{INK};padding:18px 32px;">
  <table role="presentation" width="100%" cellpadding="0" cellspacing="0"><tr>
  <td class="hd" style="font-family:{SERIF};font-size:21px;font-weight:600;color:#ffffff;white-space:nowrap;"><a href="{e(SITE)}/watch/?utm_source=marketing-in-3&amp;utm_medium=email" style="color:#ffffff;text-decoration:none;">Marketing <span style="color:{AMBER};">in 3</span></a></td>
  <td class="hd hk" align="right" style="font-family:{SANS};font-size:12px;color:#c9cfdb;">{e(kicker)}</td></tr></table>
</td></tr>
<tr><td><a href="{e(url)}"><img src="{SITE}/watch/images/{e(img['og'])}" width="600" alt="{e(img['alt'])}" style="display:block;width:100%;max-width:600px;height:auto;border:0;"></a></td></tr>
<tr><td class="px" style="padding:28px 32px 6px;">
  <h1 class="h1" style="margin:0 0 14px;font-family:{SERIF};font-size:28px;line-height:1.22;font-weight:600;color:{INK};"><a href="{e(url)}" style="color:{INK};text-decoration:none;">{e(d['title'])}</a></h1>
  <p style="margin:0 0 22px;font-family:{SANS};font-size:16px;line-height:1.6;color:#2a3246;">{e(plain(d['dek']))}</p>
</td></tr>
<tr><td class="px" style="padding:0 32px 8px;">
  <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:{CREAM};border-left:4px solid {AMBER};border-radius:6px;"><tr><td style="padding:18px 20px;">
  <h2 style="margin:0 0 8px;font-family:{SANS};font-size:12px;letter-spacing:.08em;text-transform:uppercase;color:{AMBER_TEXT};font-weight:700;">The short answer</h2>
  <p style="margin:0;font-family:{SANS};font-size:16px;line-height:1.6;color:{INK};">{md(d['short_answer'])}</p>
  </td></tr></table>
</td></tr>
<tr><td class="px" style="padding:22px 32px 4px;">
  <h2 style="margin:0 0 14px;font-family:{SANS};font-size:12px;letter-spacing:.08em;text-transform:uppercase;color:{MUTED};font-weight:700;">Key takeaways</h2>
  <table role="presentation" width="100%" cellpadding="0" cellspacing="0">{takeaways}</table>
</td></tr>
<tr><td class="px" align="left" style="padding:10px 32px 30px;">
  <table role="presentation" cellpadding="0" cellspacing="0"><tr><td style="border-radius:999px;background:{AMBER};">
  <a href="{e(url)}" style="display:inline-block;padding:14px 28px;font-family:{SANS};font-size:16px;font-weight:700;color:{INK};text-decoration:none;border-radius:999px;">Read the full issue &rarr;</a>
  </td></tr></table>
  <p style="margin:12px 0 0;font-family:{SANS};font-size:14px;line-height:1.5;color:{MUTED};">Six steps to apply it, what results to expect, and where it does not work.</p>
</td></tr>
<tr><td style="padding:0 32px;"><div style="border-top:1px solid {RULE};height:1px;line-height:1px;font-size:1px;">&nbsp;</div></td></tr>
{also_block}
{coffee_block}
<tr><td class="px" style="background:{PAPER};padding:22px 32px 26px;font-family:{SANS};font-size:13px;line-height:1.6;color:{MUTED};">
  You are getting this because you subscribed to Marketing in 3 at schivinski.com. Reply to this email to reach me.<br>
  <a href="{unsubscribe}" style="color:{MUTED};">Unsubscribe</a> &nbsp;·&nbsp; <a href="{SITE}/watch/?utm_source=marketing-in-3&amp;utm_medium=email" style="color:{MUTED};">All issues</a><br>
  Marketing in 3 by Bruno Schivinski · <a href="{SITE}/" style="color:{MUTED};">schivinski.com</a>
</td></tr>
</table></td></tr></table></body></html>"""

    lines = [f"MARKETING IN 3 · {kicker}", "", d["title"], "", plain(d["dek"]), "",
             "THE SHORT ANSWER", plain(d["short_answer"]), "", "KEY TAKEAWAYS"]
    lines += [f"* {plain(t)}" for t in d["takeaways"]]
    lines += ["", f"Read the full issue: {issue_url(d)}",
              "Six steps to apply it, what results to expect, and where it does not work."]
    if d.get("also"):
        lines += ["", "ALSO NEW THIS WEEK"]
        lines += [f"* {a['title']} ({a['authors']}, {a['journal']}, {a['year']}) https://doi.org/{a['doi']}"
                  for a in d["also"]]
    if coffee:
        lines += ["", f"Marketing in 3 is free and ad-free. If it earns its place in your inbox, buy me a coffee: {coffee}"]
    lines += ["", "--", "You are getting this because you subscribed to Marketing in 3 at schivinski.com.",
              "Reply to this email to reach me.", f"Unsubscribe: {unsubscribe}", "Marketing in 3 by Bruno Schivinski · schivinski.com"]
    return subject, body, "\n".join(lines) + "\n"


# ------------------------------------------------------------------ sending
def wait_until_live(d: dict, minutes: int = 10) -> bool:
    url = issue_url(d, campaign=False)
    deadline = time.time() + minutes * 60
    while True:
        try:
            with urllib.request.urlopen(urllib.request.Request(url, headers={"User-Agent": "m3-newsletter"}), timeout=20) as r:
                if r.status == 200:
                    return True
        except Exception:
            pass
        if time.time() > deadline:
            return False
        time.sleep(30)


def subscribers(ses, cfg: dict) -> list[str]:
    emails, token = [], None
    while True:
        kw = dict(ContactListName=cfg["contact_list"], PageSize=1000,
                  Filter={"FilteredStatus": "OPT_IN",
                          "TopicFilter": {"TopicName": cfg["topic"], "UseDefaultIfPreferenceUnavailable": False}})
        if token:
            kw["NextToken"] = token
        r = ses.list_contacts(**kw)
        emails += [c["EmailAddress"] for c in r.get("Contacts", []) if not c.get("UnsubscribeAll")]
        token = r.get("NextToken")
        if not token:
            return sorted(set(emails))


def send_one(ses, cfg: dict, to: str, subject: str, body: str, text: str, listed: bool = True) -> None:
    kw = dict(FromEmailAddress=cfg["from"], Destination={"ToAddresses": [to]}, ReplyToAddresses=[cfg["reply_to"]],
              ConfigurationSetName=cfg["config_set"],
              Content={"Simple": {"Subject": {"Data": subject, "Charset": "UTF-8"},
                                  "Body": {"Html": {"Data": body, "Charset": "UTF-8"},
                                           "Text": {"Data": text, "Charset": "UTF-8"}}}})
    if listed:
        kw["ListManagementOptions"] = {"ContactListName": cfg["contact_list"], "TopicName": cfg["topic"]}
    ses.send_email(**kw)


def summary(msg: str) -> None:
    print(msg)
    f = os.environ.get("GITHUB_STEP_SUMMARY")
    if f:
        with open(f, "a", encoding="utf-8") as h:
            h.write(msg + "\n")


def run_list(cfg: dict, d: dict, resume: bool, db=None, ses=None) -> int:
    from botocore.exceptions import ClientError
    if db is None:
        import boto3
        db, ses = boto3.client("dynamodb", region_name=cfg["region"]), boto3.client("sesv2", region_name=cfg["region"])
    key = {"pk": {"S": f"sent#{d['issue']}"}, "sk": {"S": "-"}}
    now = str(int(time.time()))
    after = ""
    try:
        db.put_item(TableName=cfg["table"], Item={**key, "status": {"S": "sending"}, "started": {"N": now},
                                                  "slug": {"S": d["slug"]}},
                    ConditionExpression="attribute_not_exists(pk)")
    except ClientError as e:
        if e.response["Error"]["Code"] != "ConditionalCheckFailedException":
            raise
        item = db.get_item(TableName=cfg["table"], Key=key, ConsistentRead=True)["Item"]
        if not resume or item["status"]["S"] != "sending":
            summary(f"Issue {d['issue']} was already emailed ({item['status']['S']}). Nothing sent.")
            return 0
        after = item.get("last", {}).get("S", "")
        summary(f"Resuming issue {d['issue']}.")

    subject, body, text = build_email(d)
    people = [p for p in subscribers(ses, cfg) if p > after]
    gap = 1.0 / float(cfg.get("max_per_second", 8))
    sent = failed = 0
    for i, to in enumerate(people):
        t0 = time.time()
        for attempt in range(5):
            try:
                send_one(ses, cfg, to, subject, body, text)
                sent += 1
                break
            except ClientError as e:
                code = e.response["Error"]["Code"]
                if code in ("TooManyRequestsException", "Throttling", "ThrottlingException", "LimitExceededException"):
                    time.sleep(2 ** attempt)
                    continue
                failed += 1     # e.g. an address SES refuses; SES records bounces and complaints itself
                print(f"skipped one address: {code}")
                break
        if i % 50 == 49:
            db.update_item(TableName=cfg["table"], Key=key, UpdateExpression="SET #l = :l",
                           ExpressionAttributeNames={"#l": "last"}, ExpressionAttributeValues={":l": {"S": to}})
        time.sleep(max(0.0, gap - (time.time() - t0)))
    db.update_item(TableName=cfg["table"], Key=key,
                   UpdateExpression="SET #s = :s, sent_n = :n, failed_n = :f, finished = :t",
                   ExpressionAttributeNames={"#s": "status"},
                   ExpressionAttributeValues={":s": {"S": "done"}, ":n": {"N": str(sent)},
                                              ":f": {"N": str(failed)}, ":t": {"N": str(int(time.time()))}})
    summary(f"Issue {d['issue']} emailed: {sent} sent, {failed} skipped.")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--issue", type=int)
    ap.add_argument("--preview", action="store_true", help="write the email to newsletter/out/, send nothing")
    ap.add_argument("--test", action="store_true", help="send one copy to test_to")
    ap.add_argument("--resume", action="store_true")
    ap.add_argument("--today", help="pretend today is this date (YYYY-MM-DD), for checks")
    ap.add_argument("--github-output", action="store_true", help="write enabled/role/region for the workflow")
    a = ap.parse_args()
    cfg = config()
    cfg.setdefault("table", "marketing-in-3")

    if a.github_output:
        ready = bool(cfg.get("endpoint") and cfg.get("aws_role_arn"))
        with open(os.environ["GITHUB_OUTPUT"], "a") as h:
            h.write(f"ready={'true' if ready else 'false'}\nsend={'true' if cfg.get('send') else 'false'}\n"
                    f"role={cfg.get('aws_role_arn', '')}\nregion={cfg.get('region', 'eu-central-1')}\n")
        return 0

    issues = live_issues()
    today = dt.date.fromisoformat(a.today) if a.today else dt.datetime.now(TZ).date()
    if a.issue:
        d = next((x for x in issues if x["issue"] == a.issue), None)
        if not d:
            summary(f"No live issue {a.issue}.")
            return 1
    else:
        d = current_issue(issues, cfg, today)
        if not d:
            summary(f"No issue for the week of {today.isoformat()}: nothing to email.")
            return 0

    if a.preview:
        OUT.mkdir(exist_ok=True)
        subject, body, text = build_email(d, unsubscribe="#unsubscribe")
        (OUT / f"issue-{d['issue']}.html").write_text(body, encoding="utf-8")
        (OUT / f"issue-{d['issue']}.txt").write_text(f"Subject: {subject}\n\n{text}", encoding="utf-8")
        print(f"Preview of issue {d['issue']} ({subject}) in {OUT}")
        return 0

    if a.test:
        import boto3
        ses = boto3.client("sesv2", region_name=cfg["region"])
        subject, body, text = build_email(d, unsubscribe=f"{SITE}/watch/subscribe.html")
        send_one(ses, cfg, cfg["test_to"], "[Test] " + subject, body, text, listed=False)
        summary(f"Test email for issue {d['issue']} sent to {cfg['test_to']}.")
        return 0

    if not (cfg.get("endpoint") and cfg.get("aws_role_arn")):
        summary("Email is not set up yet (watch/newsletter.yml). Nothing sent.")
        return 0
    if a.issue is None and not a.resume and not cfg.get("send"):
        summary(f"Sending is switched off (send: false). Issue {d['issue']} would have gone out.")
        return 0
    if not wait_until_live(d):
        summary(f"The page for issue {d['issue']} is not live yet. Nothing sent; run the workflow again later.")
        return 1
    return run_list(cfg, d, a.resume)


if __name__ == "__main__":
    sys.exit(main())
