"""Tests for the signup function and the weekly sender, with small in-memory stand-ins for DynamoDB and SES.
Run: python -m pytest newsletter/tests -q"""
from __future__ import annotations

import datetime as dt
import json
import sys
import urllib.parse
from pathlib import Path

import pytest
from botocore.exceptions import ClientError

ROOT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(ROOT / "newsletter" / "lambda"), str(ROOT / "newsletter")]
import handler  # noqa: E402
import send_issue  # noqa: E402
import sender  # noqa: E402


def err(code):
    return ClientError({"Error": {"Code": code, "Message": code}}, "op")


class FakeDB:
    """Just enough DynamoDB for these two programs."""
    def __init__(self):
        self.items = {}

    def _k(self, Key):
        return (Key["pk"]["S"], Key["sk"]["S"])

    def get_item(self, TableName, Key, ConsistentRead=False):
        it = self.items.get(self._k(Key))
        return {"Item": dict(it)} if it else {}

    def put_item(self, TableName, Item, ConditionExpression=None, ExpressionAttributeValues=None):
        k = self._k(Item)
        cur = self.items.get(k)
        if ConditionExpression == "attribute_not_exists(pk)" and cur:
            raise err("ConditionalCheckFailedException")
        if ConditionExpression and "expires < :now" in ConditionExpression and cur:
            if int(cur["expires"]["N"]) >= int(ExpressionAttributeValues[":now"]["N"]):
                raise err("ConditionalCheckFailedException")
        self.items[k] = dict(Item)
        return {}

    def delete_item(self, TableName, Key):
        self.items.pop(self._k(Key), None)

    def update_item(self, TableName, Key, UpdateExpression, ExpressionAttributeValues=None,
                    ExpressionAttributeNames=None, ReturnValues=None, ConditionExpression=None):
        k = self._k(Key)
        it = self.items.setdefault(k, {"pk": Key["pk"], "sk": Key["sk"]})
        v = ExpressionAttributeValues or {}
        if ConditionExpression == "beat = :old" and it.get("beat") != v[":old"]:
            raise err("ConditionalCheckFailedException")
        if UpdateExpression.startswith("ADD n"):
            it["n"] = {"N": str(int(it.get("n", {"N": "0"})["N"]) + 1)}
            it.setdefault("expires", v[":exp"])
            return {"Attributes": {"n": it["n"]}}
        names = ExpressionAttributeNames or {}
        for part in UpdateExpression[4:].split(","):
            name, val = [x.strip() for x in part.split("=")]
            it[names.get(name, name)] = v[val]
        return {}


class FakeSES:
    def __init__(self, contacts=(), fail=None):
        self.sent = []
        self.contacts = {c: {"EmailAddress": c, "UnsubscribeAll": False} for c in contacts}
        self.fail = fail or {}

    def send_email(self, **kw):
        to = kw["Destination"]["ToAddresses"][0]
        if to in self.fail:
            raise err(self.fail[to])
        self.sent.append(kw)

    def create_contact(self, ContactListName, EmailAddress, **kw):
        if EmailAddress in self.contacts:
            raise err("AlreadyExistsException")
        self.contacts[EmailAddress] = {"EmailAddress": EmailAddress, **kw}

    def update_contact(self, ContactListName, EmailAddress, **kw):
        self.contacts[EmailAddress].update(kw)

    def list_contacts(self, **kw):
        names = sorted(self.contacts)
        start = int(kw.get("NextToken") or 0)
        page = names[start:start + 2]   # tiny pages, to exercise paging
        r = {"Contacts": [self.contacts[n] for n in page]}
        if start + 2 < len(names):
            r["NextToken"] = str(start + 2)
        return r


@pytest.fixture
def fakes(monkeypatch):
    db, ses = FakeDB(), FakeSES()
    monkeypatch.setattr(handler, "_db", db)
    monkeypatch.setattr(handler, "_ses", ses)
    monkeypatch.setattr(handler, "HASH_SALT", "x" * 32)
    return db, ses


def ev(path, body, ip="1.2.3.4", form=False):
    return {"requestContext": {"http": {"method": "POST", "path": path, "sourceIp": ip}}, "rawPath": path,
            "headers": {"content-type": "application/x-www-form-urlencoded" if form else "application/json"},
            "body": urllib.parse.urlencode(body) if form else json.dumps(body)}


def status(r):
    return json.loads(r["body"])["status"]


# ------------------------------------------------------------------ signup function
def test_subscribe_then_confirm(fakes):
    db, ses = fakes
    r = handler.handler(ev("/subscribe", {"email": " Reader@Example.COM ", "source": "https://schivinski.com/watch/"}))
    assert r["statusCode"] == 200 and status(r) == "check"
    assert len(ses.sent) == 1
    mail = ses.sent[0]
    assert mail["Destination"]["ToAddresses"] == ["reader@example.com"]
    assert "ListManagementOptions" not in mail          # confirmation is not a list email
    link = next(w for w in mail["Content"]["Simple"]["Body"]["Text"]["Data"].split() if "?t=" in w)
    assert link.startswith("https://schivinski.com/watch/subscribe.html?t=")
    token = link.split("?t=")[1].split("#")[0]
    assert "reader@example.com" not in ses.contacts     # not on the list until confirmed

    r = handler.handler(ev("/confirm", {"t": token}))
    assert status(r) == "ok"
    c = ses.contacts["reader@example.com"]
    assert c["TopicPreferences"] == [{"TopicName": "weekly", "SubscriptionStatus": "OPT_IN"}]
    consent = [v for (pk, _), v in db.items.items() if pk == "consent#reader@example.com"]
    assert len(consent) == 1 and consent[0]["source"]["S"] == "/watch/"
    assert consent[0]["consent_version"]["S"] == handler.CONSENT_VERSION
    assert not any(pk.startswith("tok#") for pk, _ in db.items)   # token used up
    assert not any("1.2.3.4" in json.dumps(v) for v in db.items.values())  # no raw IP stored

    r = handler.handler(ev("/confirm", {"t": token}))     # second use
    assert r["statusCode"] == 410 and status(r) == "expired"


def test_resubscribe_after_leaving_updates_contact(fakes):
    db, ses = fakes
    ses.contacts["a@b.co"] = {"EmailAddress": "a@b.co", "UnsubscribeAll": True}
    handler.handler(ev("/subscribe", {"email": "a@b.co"}))
    token = ses.sent[0]["Content"]["Simple"]["Body"]["Text"]["Data"].split("?t=")[1].split("#")[0]
    assert status(handler.handler(ev("/confirm", {"t": token}))) == "ok"
    assert ses.contacts["a@b.co"]["UnsubscribeAll"] is False


def test_honeypot_and_bad_input(fakes):
    db, ses = fakes
    assert status(handler.handler(ev("/subscribe", {"email": "x@y.com", "website": "spam"}))) == "check"
    assert status(handler.handler(ev("/subscribe", {"email": "not-an-email"}))) == "invalid"
    assert status(handler.handler(ev("/confirm", {"t": "short"}))) == "invalid"
    assert status(handler.handler(ev("/confirm", {"t": "a" * 32}))) == "expired"
    assert ses.sent == []


def test_one_confirmation_per_address_per_10_minutes(fakes):
    db, ses = fakes
    for _ in range(3):
        assert status(handler.handler(ev("/subscribe", {"email": "a@b.co"}, ip="9.9.9.9"))) == "check"
    assert len(ses.sent) == 1


def test_rate_limit_per_ip(fakes):
    db, ses = fakes
    codes = [handler.handler(ev("/subscribe", {"email": f"p{i}@b.co"}, ip="5.5.5.5"))["statusCode"] for i in range(8)]
    assert codes.count(200) == handler.LIMIT_PER_IP_HOUR and codes[-1] == 429


def test_form_post_without_javascript_redirects(fakes):
    r = handler.handler(ev("/subscribe", {"email": "a@b.co"}, form=True))
    assert r["statusCode"] == 303 and r["headers"]["Location"].endswith("subscribe.html?check=1#email")


def test_ses_rejection_cleans_up(fakes):
    db, ses = fakes
    ses.fail["bad@b.co"] = "MessageRejected"
    r = handler.handler(ev("/subscribe", {"email": "bad@b.co"}))
    assert status(r) == "undeliverable"
    assert not any(pk.startswith(("tok#", "pend#")) for pk, _ in db.items)


def test_routes(fakes):
    assert handler.handler({"requestContext": {"http": {"method": "GET"}}, "rawPath": "/"})["statusCode"] == 200
    assert handler.handler(ev("/nope", {}))["statusCode"] == 404


# ------------------------------------------------------------------ weekly email (build side) and sender (AWS)
ISSUES = send_issue.live_issues()
CFG = send_issue.config()


def test_only_the_current_week_is_emailed():
    latest = ISSUES[-1]
    wk = dt.date.fromisoformat(latest["week_of"])
    assert send_issue.current_issue(ISSUES, CFG, wk)["issue"] == latest["issue"]
    assert send_issue.current_issue(ISSUES, CFG, wk - dt.timedelta(days=1))["issue"] == latest["issue"]
    assert send_issue.current_issue(ISSUES, CFG, wk + dt.timedelta(days=6))["issue"] == latest["issue"]
    assert send_issue.current_issue(ISSUES, CFG, wk + dt.timedelta(days=30)) is None


def test_email_content():
    d = ISSUES[-1]
    subject, body, text = send_issue.build_email(d)
    assert subject == d["short_title"]
    assert "{{amazonSESUnsubscribeUrl}}" in body and "{{amazonSESUnsubscribeUrl}}" in text
    assert f"utm_campaign=issue-{d['issue']}" in body
    assert "\u2014" not in body and "\u2013" not in body       # no em or en dashes (house style)


def test_export_only_sends_when_switched_on(tmp_path, monkeypatch):
    monkeypatch.setattr(send_issue, "ROOT", tmp_path)
    wk = dt.date.fromisoformat(ISSUES[-1]["week_of"])
    assert send_issue.export({**CFG, "send": True, "endpoint": ""}, wk)["send"] is False
    out = send_issue.export({**CFG, "send": True, "endpoint": "https://x"}, wk)
    assert out["send"] is True and out["issue"] == ISSUES[-1]["issue"] and "html" in out
    assert send_issue.export(CFG, wk + dt.timedelta(days=40))["issue"] is None


def email():
    d = ISSUES[-1]
    subject, body, text = send_issue.build_email(d)
    return {"issue": d["issue"], "slug": d["slug"], "subject": subject, "html": body, "text": text, "send": True}


def test_sends_once_to_everyone_with_unsubscribe():
    db, ses = FakeDB(), FakeSES(contacts=["a@x.co", "b@x.co", "c@x.co", "d@x.co", "e@x.co"])
    ses.contacts["e@x.co"]["UnsubscribeAll"] = True
    m = email()
    r = sender.send_issue(db, ses, m)
    assert r["result"] == "done" and r["sent"] == 4
    to = [x["Destination"]["ToAddresses"][0] for x in ses.sent]
    assert to == ["a@x.co", "b@x.co", "c@x.co", "d@x.co"]
    assert all(x["ListManagementOptions"] == {"ContactListName": "marketing-in-3", "TopicName": "weekly"} for x in ses.sent)
    assert sender.send_issue(db, ses, m)["result"] == "already sent or in progress"   # next hourly run
    assert len(ses.sent) == 4


def test_a_send_that_runs_out_of_time_is_finished_next_hour(monkeypatch):
    monkeypatch.setattr(sender, "MAX_PER_SECOND", 10 ** 6)
    db, ses = FakeDB(), FakeSES(contacts=[f"p{i:02d}@x.co" for i in range(10)])
    m = email()
    calls = {"n": 0}
    def left():                       # plenty of time for 4 emails, then the run is nearly out
        calls["n"] += 1
        return 10 ** 9 if calls["n"] <= 4 else 0
    assert sender.send_issue(db, ses, m, left)["result"] == "paused"
    assert len(ses.sent) == 4
    r = sender.send_issue(db, ses, m)
    assert r["result"] == "done" and len(ses.sent) == 10
    assert len({x["Destination"]["ToAddresses"][0] for x in ses.sent}) == 10      # nobody twice


def test_a_busy_send_is_not_doubled():
    db, ses = FakeDB(), FakeSES(contacts=["a@x.co"])
    m = email()
    import time as _t
    db.items[(f"sent#{m['issue']}", "-")] = {"pk": {"S": f"sent#{m['issue']}"}, "sk": {"S": "-"},
                                            "status": {"S": "sending"}, "started": {"N": str(int(_t.time()))},
                                            "beat": {"N": str(int(_t.time()))}}
    assert sender.send_issue(db, ses, m)["result"] == "already sent or in progress"
    assert ses.sent == []


def test_a_refused_address_does_not_stop_the_send():
    db, ses = FakeDB(), FakeSES(contacts=["a@x.co", "b@x.co"], fail={"a@x.co": "MessageRejected"})
    r = sender.send_issue(db, ses, email())
    assert r["sent"] == 1 and r["failed"] == 1


def test_handler_switches(monkeypatch):
    ses = FakeSES(contacts=["a@x.co"])
    monkeypatch.setattr(sender.boto3, "client", lambda name: ses if name == "sesv2" else FakeDB())
    m = email()
    monkeypatch.setattr(sender, "fetch_email", lambda: {**m, "send": False})
    assert "switched off" in sender.handler({})["result"] and ses.sent == []
    assert sender.handler({"test": True})["result"] == "test sent"
    assert ses.sent[-1]["Destination"]["ToAddresses"] == ["issues@marketingin3.com"]
    assert ses.sent[-1]["Content"]["Simple"]["Subject"]["Data"].startswith("[Test] ")
    assert ses.sent[-1]["ListManagementOptions"]["ContactListName"] == "marketing-in-3"
    monkeypatch.setattr(sender, "fetch_email", lambda: {"issue": None})
    assert sender.handler({})["result"] == "no issue this week"


def test_no_readers_does_not_use_up_the_issue():
    db, ses = FakeDB(), FakeSES()
    m = email()
    assert sender.send_issue(db, ses, m)["result"] == "no readers yet"
    assert (f"sent#{m['issue']}", "-") not in db.items
    ses.contacts["first@x.co"] = {"EmailAddress": "first@x.co", "UnsubscribeAll": False}
    assert sender.send_issue(db, ses, m)["sent"] == 1
