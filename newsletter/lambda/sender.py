"""Marketing in 3 weekly sender (AWS Lambda, run every hour by an EventBridge rule).

The site build publishes this week's email, ready to send, at https://schivinski.com/watch/email/latest.json
(newsletter/send_issue.py --export). This function reads it and, if it holds an issue that has not been emailed
yet and sending is switched on, emails it to every confirmed reader on the SES contact list. So GitHub never needs
AWS access, and an issue goes out only once its page is live.

  * Each issue is sent once: the send is claimed in DynamoDB (sent#<issue>) before the first email goes out.
  * A send that runs out of time is finished by the next hourly run, starting after the last address reached.
  * Every email carries SES's unsubscribe link and one-click unsubscribe header (list management).
  * Logs show counts only, never addresses.

Manual use (Lambda console "Test", or `aws lambda invoke`):
  {"test": true}                 one copy of the current email to TEST_TO (works in the SES sandbox)
  {"dry_run": true}              report what would happen, send nothing
"""
from __future__ import annotations

import json
import os
import time
import urllib.request

import boto3
from botocore.exceptions import ClientError

TABLE = os.environ.get("TABLE", "marketing-in-3")
CONTACT_LIST = os.environ.get("CONTACT_LIST", "marketing-in-3")
TOPIC = os.environ.get("TOPIC", "weekly")
FROM_ADDRESS = os.environ.get("FROM_ADDRESS", "Marketing in 3 <issues@marketingin3.com>")
REPLY_TO = os.environ.get("REPLY_TO", "issues@marketingin3.com")
TEST_TO = os.environ.get("TEST_TO", "issues@marketingin3.com")
CONFIG_SET = os.environ.get("CONFIG_SET", "marketing-in-3")
FEED = os.environ.get("EMAIL_FEED", "https://schivinski.com/watch/email/latest.json")
MAX_PER_SECOND = float(os.environ.get("MAX_PER_SECOND", "8"))
STALE_AFTER = 20 * 60          # a "sending" claim older than this belongs to a run that stopped
SAFETY_MS = 60_000             # stop sending this long before the Lambda time limit


def fetch_email(url: str = FEED) -> dict:
    req = urllib.request.Request(f"{url}?t={int(time.time())}", headers={"User-Agent": "marketing-in-3-sender"})
    with urllib.request.urlopen(req, timeout=20) as r:
        return json.loads(r.read().decode("utf-8"))


def subscribers(ses) -> list[str]:
    emails, token = [], None
    while True:
        kw = dict(ContactListName=CONTACT_LIST, PageSize=1000,
                  Filter={"FilteredStatus": "OPT_IN",
                          "TopicFilter": {"TopicName": TOPIC, "UseDefaultIfPreferenceUnavailable": False}})
        if token:
            kw["NextToken"] = token
        r = ses.list_contacts(**kw)
        emails += [c["EmailAddress"] for c in r.get("Contacts", []) if not c.get("UnsubscribeAll")]
        token = r.get("NextToken")
        if not token:
            return sorted(set(emails))


def send_one(ses, to: str, m: dict, listed: bool = True, subject_prefix: str = "") -> None:
    kw = dict(FromEmailAddress=FROM_ADDRESS, Destination={"ToAddresses": [to]}, ReplyToAddresses=[REPLY_TO],
              ConfigurationSetName=CONFIG_SET,
              Content={"Simple": {"Subject": {"Data": subject_prefix + m["subject"], "Charset": "UTF-8"},
                                  "Body": {"Html": {"Data": m["html"], "Charset": "UTF-8"},
                                           "Text": {"Data": m["text"], "Charset": "UTF-8"}}}})
    if listed:
        kw["ListManagementOptions"] = {"ContactListName": CONTACT_LIST, "TopicName": TOPIC}
    ses.send_email(**kw)


def claim(db, issue: int, slug: str) -> str | None:
    """Claim the send for this issue. Returns the address to continue after ('' for a fresh send),
    or None if the issue was already sent or another run is busy with it."""
    key = {"pk": {"S": f"sent#{issue}"}, "sk": {"S": "-"}}
    now = int(time.time())
    try:
        db.put_item(TableName=TABLE, Item={**key, "status": {"S": "sending"}, "started": {"N": str(now)},
                                           "beat": {"N": str(now)}, "slug": {"S": slug}},
                    ConditionExpression="attribute_not_exists(pk)")
        return ""
    except ClientError as e:
        if e.response["Error"]["Code"] != "ConditionalCheckFailedException":
            raise
    item = db.get_item(TableName=TABLE, Key=key, ConsistentRead=True)["Item"]
    if item["status"]["S"] != "sending":
        return None
    beat = int(item.get("beat", item["started"])["N"])
    if now - beat < STALE_AFTER:
        return None
    try:   # take over a run that stopped part-way
        db.update_item(TableName=TABLE, Key=key, UpdateExpression="SET beat = :now",
                       ConditionExpression="beat = :old",
                       ExpressionAttributeValues={":now": {"N": str(now)}, ":old": {"N": str(beat)}})
    except ClientError as e:
        if e.response["Error"]["Code"] == "ConditionalCheckFailedException":
            return None
        raise
    return item.get("last", {}).get("S", "")


def send_issue(db, ses, m: dict, time_left=lambda: 10 ** 9) -> dict:
    issue = int(m["issue"])
    key = {"pk": {"S": f"sent#{issue}"}, "sk": {"S": "-"}}
    after = claim(db, issue, m.get("slug", ""))
    if after is None:
        return {"issue": issue, "result": "already sent or in progress"}
    people = [p for p in subscribers(ses) if p > after]
    gap = 1.0 / MAX_PER_SECOND
    sent = failed = 0
    last = after
    for to in people:
        if time_left() < SAFETY_MS:
            db.update_item(TableName=TABLE, Key=key, UpdateExpression="SET #l = :l, beat = :b",
                           ExpressionAttributeNames={"#l": "last"},
                           ExpressionAttributeValues={":l": {"S": last}, ":b": {"N": "0"}})   # next run resumes
            print(json.dumps({"event": "paused", "issue": issue, "sent": sent, "failed": failed}))
            return {"issue": issue, "result": "paused", "sent": sent, "failed": failed}
        t0 = time.time()
        for attempt in range(5):
            try:
                send_one(ses, to, m)
                sent += 1
                break
            except ClientError as e:
                code = e.response["Error"]["Code"]
                if code in ("TooManyRequestsException", "Throttling", "ThrottlingException", "LimitExceededException"):
                    time.sleep(2 ** attempt)
                    continue
                failed += 1      # an address SES refuses; SES tracks bounces and complaints itself
                break
        last = to
        if (sent + failed) % 50 == 0:
            db.update_item(TableName=TABLE, Key=key, UpdateExpression="SET #l = :l, beat = :b",
                           ExpressionAttributeNames={"#l": "last"},
                           ExpressionAttributeValues={":l": {"S": last}, ":b": {"N": str(int(time.time()))}})
        time.sleep(max(0.0, gap - (time.time() - t0)))
    db.update_item(TableName=TABLE, Key=key,
                   UpdateExpression="SET #s = :s, sent_n = :n, failed_n = :f, finished = :t",
                   ExpressionAttributeNames={"#s": "status"},
                   ExpressionAttributeValues={":s": {"S": "done"}, ":n": {"N": str(sent)},
                                              ":f": {"N": str(failed)}, ":t": {"N": str(int(time.time()))}})
    print(json.dumps({"event": "sent", "issue": issue, "sent": sent, "failed": failed}))
    return {"issue": issue, "result": "done", "sent": sent, "failed": failed}


def handler(event, context=None):
    event = event or {}
    m = fetch_email()
    if not m.get("issue"):
        return {"result": "no issue this week"}
    ses = boto3.client("sesv2")
    if event.get("test"):
        # Sent through the list (TEST_TO is subscribed), so SES fills in the real unsubscribe link and header.
        send_one(ses, TEST_TO, m, subject_prefix="[Test] ")
        return {"result": "test sent", "issue": m["issue"], "to": TEST_TO}
    if not m.get("send"):
        return {"result": "sending is switched off (send: false in watch/newsletter.yml)", "issue": m["issue"]}
    if event.get("dry_run"):
        return {"result": "dry run", "issue": m["issue"], "readers": len(subscribers(ses))}
    db = boto3.client("dynamodb")
    left = (lambda: context.get_remaining_time_in_millis()) if context else (lambda: 10 ** 9)
    return send_issue(db, ses, m, left)
