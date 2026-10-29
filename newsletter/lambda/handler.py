"""Marketing in 3 signup function (AWS Lambda, Python 3.12, behind a Lambda function URL).

Two routes, both POST:
  /subscribe  {email, website?, source?}  ->  sends a confirmation email (double opt-in)
  /confirm    {t}                         ->  adds the confirmed address to the SES contact list

The confirmation link points to the Subscribe page (schivinski.com/watch/subscribe.html?t=...), which calls /confirm. Email link scanners
that open links without running scripts therefore cannot confirm on a reader's behalf.

The subscriber list itself lives in the SES contact list. SES adds the unsubscribe link and the one-click
unsubscribe header to every issue and removes people who leave. DynamoDB (table TABLE) only holds:
  tok#<token>         pending confirmation, deleted on use, expires after 48 hours
  pend#<email>        when the last confirmation email went out, expires after 10 minutes
  consent#<email>     the consent record (sk = confirmation time): when, what wording, from which page
  rate#...            short-lived rate-limit counters
IP addresses are never stored, only a keyed hash used for rate limiting.
"""
from __future__ import annotations

import base64
import hashlib
import hmac
import html
import json
import os
import re
import secrets
import time
import urllib.parse

import boto3
from botocore.exceptions import ClientError

TABLE = os.environ.get("TABLE", "marketing-in-3")
CONTACT_LIST = os.environ.get("CONTACT_LIST", "marketing-in-3")
TOPIC = os.environ.get("TOPIC", "weekly")
FROM_ADDRESS = os.environ.get("FROM_ADDRESS", "Marketing in 3 <issues@marketingin3.com>")
REPLY_TO = os.environ.get("REPLY_TO", "issues@marketingin3.com")
CONFIG_SET = os.environ.get("CONFIG_SET", "marketing-in-3")
SITE_URL = os.environ.get("SITE_URL", "https://schivinski.com").rstrip("/")
HASH_SALT = os.environ.get("HASH_SALT", "")

SUBSCRIBE_PAGE = f"{SITE_URL}/watch/subscribe.html"
# The wording readers agree to, recorded with each consent. Change the version when the form text changes.
CONSENT_VERSION = "2026-10-30"
CONSENT_TEXT = ("Send me Marketing in 3 by email, new issues every Monday and Thursday. My address is used "
                "only for this, "
                "and I can unsubscribe from any issue.")

TOKEN_TTL = 48 * 3600
RESEND_GAP = 10 * 60
LIMIT_PER_IP_HOUR = 6
LIMIT_GLOBAL_DAY = 400          # confirmation emails a day, across everyone (protects the sending quota)

EMAIL_RE = re.compile(r"^[A-Za-z0-9.!#$%&'*+/=?^_`{|}~-]+@[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?"
                      r"(?:\.[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)+$")

_db = None
_ses = None


def clients():
    global _db, _ses
    if _db is None:
        _db = boto3.client("dynamodb")
        _ses = boto3.client("sesv2")
    return _db, _ses


# ---------------------------------------------------------------- helpers
def reply(status: int, body: dict, form: bool = False, location: str | None = None) -> dict:
    if form and location:
        return {"statusCode": 303, "headers": {"Location": location}, "body": ""}
    return {"statusCode": status, "headers": {"Content-Type": "application/json", "Cache-Control": "no-store"},
            "body": json.dumps(body)}


def parse_body(event: dict) -> tuple[dict, bool]:
    raw = event.get("body") or ""
    if event.get("isBase64Encoded"):
        raw = base64.b64decode(raw).decode("utf-8", "replace")
    ctype = (event.get("headers") or {}).get("content-type", "")
    if "application/x-www-form-urlencoded" in ctype:
        return {k: v[0] for k, v in urllib.parse.parse_qs(raw).items()}, True
    try:
        data = json.loads(raw) if raw else {}
        return (data if isinstance(data, dict) else {}), False
    except json.JSONDecodeError:
        return {}, False


def normalise(email: str) -> str | None:
    email = (email or "").strip()
    if not email or len(email) > 254 or not EMAIL_RE.match(email):
        return None
    local, _, domain = email.rpartition("@")
    if len(local) > 64:
        return None
    return f"{local}@{domain}".lower()


def ip_hash(event: dict) -> str:
    ip = ((event.get("requestContext") or {}).get("http") or {}).get("sourceIp", "")
    return hmac.new(HASH_SALT.encode(), ip.encode(), hashlib.sha256).hexdigest()[:20]


def bump(db, key: str, ttl: int) -> int:
    """Atomic counter that expires on its own; returns the new count."""
    r = db.update_item(
        TableName=TABLE, Key={"pk": {"S": key}, "sk": {"S": "-"}},
        UpdateExpression="ADD n :one SET expires = if_not_exists(expires, :exp)",
        ExpressionAttributeValues={":one": {"N": "1"}, ":exp": {"N": str(int(time.time()) + ttl)}},
        ReturnValues="UPDATED_NEW")
    return int(r["Attributes"]["n"]["N"])


def clean_source(s: str) -> str:
    """The page the form was on, as a site path, for the consent record. Anything else is dropped."""
    s = (s or "").strip()[:200]
    if s.startswith(SITE_URL):
        s = s[len(SITE_URL):]
    return s if re.fullmatch(r"/[A-Za-z0-9/_.\-]*", s or "") else ""


# ---------------------------------------------------------------- emails
INK, AMBER, MUTED, PAPER = "#15203b", "#e0a12a", "#5b6476", "#f6f4ef"


def confirmation_email(link: str) -> tuple[str, str, str]:
    subject = "Confirm your Marketing in 3 subscription"
    text = ("Hello,\n\n"
            "Someone, hopefully you, asked to receive Marketing in 3 by email: new peer-reviewed marketing "
            "research every Monday and Thursday, explained for practitioners.\n\n"
            f"Confirm here: {link}\n\n"
            "The link works for 48 hours. If you did not ask for this, ignore this email and you will not hear "
            "from us again.\n\n"
            f"Bruno Schivinski\nMarketing in 3 · {SITE_URL.replace('https://', '')}\n")
    a = html.escape(link, quote=True)
    body = f"""<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width">
<meta name="color-scheme" content="light"><title>{subject}</title></head>
<body style="margin:0;padding:0;background:{PAPER};">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:{PAPER};"><tr><td align="center" style="padding:32px 16px;">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width:520px;background:#ffffff;border-radius:10px;border-top:4px solid {AMBER};">
<tr><td style="padding:32px 32px 8px;font-family:Georgia,'Times New Roman',serif;color:{INK};">
<p style="margin:0 0 6px;font-family:Arial,Helvetica,sans-serif;font-size:12px;letter-spacing:.08em;text-transform:uppercase;color:{MUTED};">Marketing in 3</p>
<h1 style="margin:0 0 16px;font-size:26px;line-height:1.25;font-weight:600;">One click and you are in</h1></td></tr>
<tr><td style="padding:0 32px;font-family:Arial,Helvetica,sans-serif;font-size:16px;line-height:1.55;color:#2a3246;">
<p style="margin:0 0 16px;">Someone, hopefully you, asked to receive Marketing in 3 by email: new peer-reviewed marketing research every Monday and Thursday, explained for practitioners.</p>
<p style="margin:0 0 24px;">Confirm and the next issue will land in your inbox.</p>
<table role="presentation" cellpadding="0" cellspacing="0"><tr><td style="border-radius:999px;background:{AMBER};">
<a href="{a}" style="display:inline-block;padding:13px 26px;font-family:Arial,Helvetica,sans-serif;font-size:16px;font-weight:700;color:{INK};text-decoration:none;border-radius:999px;">Confirm my subscription</a>
</td></tr></table>
<p style="margin:24px 0 0;font-size:14px;color:{MUTED};">The link works for 48 hours. If you did not ask for this, ignore this email and you will not hear from us again.</p>
</td></tr>
<tr><td style="padding:28px 32px 28px;font-family:Arial,Helvetica,sans-serif;font-size:13px;line-height:1.5;color:{MUTED};">
Bruno Schivinski · <a href="{SITE_URL}/watch/" style="color:{MUTED};">Marketing in 3</a></td></tr>
</table></td></tr></table></body></html>"""
    return subject, text, body


def send_confirmation(ses, email: str, token: str) -> None:
    link = f"{SUBSCRIBE_PAGE}?t={token}#email"
    subject, text, body = confirmation_email(link)
    ses.send_email(
        FromEmailAddress=FROM_ADDRESS,
        Destination={"ToAddresses": [email]},
        ReplyToAddresses=[REPLY_TO],
        ConfigurationSetName=CONFIG_SET,
        Content={"Simple": {"Subject": {"Data": subject, "Charset": "UTF-8"},
                            "Body": {"Text": {"Data": text, "Charset": "UTF-8"},
                                     "Html": {"Data": body, "Charset": "UTF-8"}}}})


# ---------------------------------------------------------------- routes
def subscribe(event: dict, data: dict, form: bool) -> dict:
    db, ses = clients()
    ok_page = f"{SUBSCRIBE_PAGE}?check=1#email"
    # Honeypot: people never see this field; bots fill it in. Pretend it worked.
    if (data.get("website") or "").strip():
        return reply(200, {"status": "check"}, form, ok_page)
    email = normalise(str(data.get("email", "")))
    if not email:
        return reply(400, {"status": "invalid"}, form, f"{SUBSCRIBE_PAGE}?invalid=1#email")

    now = int(time.time())
    if bump(db, f"rate#ip#{ip_hash(event)}#{now // 3600}", 3600) > LIMIT_PER_IP_HOUR:
        return reply(429, {"status": "slow"}, form, f"{SUBSCRIBE_PAGE}?slow=1#email")
    # One confirmation email per address every 10 minutes, whoever asks.
    try:
        db.put_item(TableName=TABLE,
                    Item={"pk": {"S": f"pend#{email}"}, "sk": {"S": "-"}, "expires": {"N": str(now + RESEND_GAP)}},
                    ConditionExpression="attribute_not_exists(pk) OR expires < :now",
                    ExpressionAttributeValues={":now": {"N": str(now)}})
    except ClientError as e:
        if e.response["Error"]["Code"] == "ConditionalCheckFailedException":
            return reply(200, {"status": "check"}, form, ok_page)
        raise
    if bump(db, f"rate#global#{now // 86400}", 2 * 86400) > LIMIT_GLOBAL_DAY:
        return reply(429, {"status": "busy"}, form, f"{SUBSCRIBE_PAGE}?slow=1#email")

    token = secrets.token_urlsafe(24)
    db.put_item(TableName=TABLE, Item={
        "pk": {"S": f"tok#{token}"}, "sk": {"S": "-"},
        "email": {"S": email},
        "requested": {"N": str(now)},
        "source": {"S": clean_source(str(data.get("source", ""))) or "-"},
        "expires": {"N": str(now + TOKEN_TTL)},
    })
    try:
        send_confirmation(ses, email, token)
    except ClientError as e:
        code = e.response["Error"]["Code"]
        print(json.dumps({"event": "confirmation_failed", "code": code}))
        db.delete_item(TableName=TABLE, Key={"pk": {"S": f"tok#{token}"}, "sk": {"S": "-"}})
        db.delete_item(TableName=TABLE, Key={"pk": {"S": f"pend#{email}"}, "sk": {"S": "-"}})
        if code in ("MessageRejected", "AccountSuspendedException", "SendingPausedException"):
            return reply(400, {"status": "undeliverable"}, form, f"{SUBSCRIBE_PAGE}?invalid=1#email")
        return reply(503, {"status": "error"}, form, f"{SUBSCRIBE_PAGE}?error=1#email")
    print(json.dumps({"event": "confirmation_sent"}))
    return reply(200, {"status": "check"}, form, ok_page)


def confirm(event: dict, data: dict) -> dict:
    db, ses = clients()
    token = str(data.get("t", "")).strip()
    if not re.fullmatch(r"[A-Za-z0-9_\-]{20,64}", token):
        return reply(400, {"status": "invalid"})
    key = {"pk": {"S": f"tok#{token}"}, "sk": {"S": "-"}}
    item = db.get_item(TableName=TABLE, Key=key, ConsistentRead=True).get("Item")
    now = int(time.time())
    if not item or int(item["expires"]["N"]) < now:
        return reply(410, {"status": "expired"})
    email = item["email"]["S"]
    prefs = dict(TopicPreferences=[{"TopicName": TOPIC, "SubscriptionStatus": "OPT_IN"}], UnsubscribeAll=False)
    try:
        ses.create_contact(ContactListName=CONTACT_LIST, EmailAddress=email, **prefs)
    except ClientError as e:
        if e.response["Error"]["Code"] != "AlreadyExistsException":
            raise
        ses.update_contact(ContactListName=CONTACT_LIST, EmailAddress=email, **prefs)
    db.put_item(TableName=TABLE, Item={
        "pk": {"S": f"consent#{email}"}, "sk": {"S": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime(now))},
        "requested": item["requested"],
        "confirmed": {"N": str(now)},
        "source": item.get("source", {"S": "-"}),
        "method": {"S": "double opt-in: form, then confirmation link sent to the address"},
        "consent_version": {"S": CONSENT_VERSION},
        "consent_text": {"S": CONSENT_TEXT},
    })
    db.delete_item(TableName=TABLE, Key=key)
    print(json.dumps({"event": "confirmed"}))
    return reply(200, {"status": "ok"})


def handler(event, context=None):
    http = (event.get("requestContext") or {}).get("http") or {}
    method = http.get("method", "GET").upper()
    path = (event.get("rawPath") or http.get("path") or "/").rstrip("/") or "/"
    if method != "POST":
        return reply(405 if path != "/" else 200, {"status": "ok" if path == "/" else "method"})
    data, form = parse_body(event)
    try:
        if path == "/subscribe":
            return subscribe(event, data, form)
        if path == "/confirm":
            return confirm(event, data)
    except ClientError as e:
        print(json.dumps({"event": "error", "code": e.response["Error"]["Code"], "path": path}))
        return reply(503, {"status": "error"}, form, f"{SUBSCRIBE_PAGE}?error=1#email")
    return reply(404, {"status": "not_found"})
