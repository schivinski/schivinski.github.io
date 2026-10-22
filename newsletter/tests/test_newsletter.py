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
                    ExpressionAttributeNames=None, ReturnValues=None):
        k = self._k(Key)
        it = self.items.setdefault(k, {"pk": Key["pk"], "sk": Key["sk"]})
        v = ExpressionAttributeValues or {}
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


# ------------------------------------------------------------------ weekly sender
ISSUES = send_issue.live_issues()
CFG = {**send_issue.config(), "table": "marketing-in-3", "max_per_second": 1000}


def test_only_the_current_week_is_emailed():
    latest = ISSUES[-1]
    wk = dt.date.fromisoformat(latest["week_of"])
    assert send_issue.current_issue(ISSUES, CFG, wk)["issue"] == latest["issue"]
    assert send_issue.current_issue(ISSUES, CFG, wk - dt.timedelta(days=1))["issue"] == latest["issue"]  # Sunday UTC
    assert send_issue.current_issue(ISSUES, CFG, wk + dt.timedelta(days=6))["issue"] == latest["issue"]
    assert send_issue.current_issue(ISSUES, CFG, wk + dt.timedelta(days=30)) is None


def test_email_content():
    d = ISSUES[-1]
    subject, body, text = send_issue.build_email(d)
    assert subject == d["short_title"]
    assert "{{amazonSESUnsubscribeUrl}}" in body and "{{amazonSESUnsubscribeUrl}}" in text
    assert f"utm_campaign=issue-{d['issue']}" in body
    assert "—" not in body and "–" not in body       # no em or en dashes (house style)
    assert "—" not in text and "–" not in text


def test_sends_once_to_everyone_with_unsubscribe():
    db, ses = FakeDB(), FakeSES(contacts=["a@x.co", "b@x.co", "c@x.co", "d@x.co", "e@x.co"])
    ses.contacts["e@x.co"]["UnsubscribeAll"] = True
    d = ISSUES[-1]
    send_issue.run_list(CFG, d, resume=False, db=db, ses=ses)
    to = [m["Destination"]["ToAddresses"][0] for m in ses.sent]
    assert to == ["a@x.co", "b@x.co", "c@x.co", "d@x.co"]
    assert all(m["ListManagementOptions"] == {"ContactListName": "marketing-in-3", "TopicName": "weekly"} for m in ses.sent)
    rec = db.items[(f"sent#{d['issue']}", "-")]
    assert rec["status"]["S"] == "done" and rec["sent_n"]["N"] == "4"

    send_issue.run_list(CFG, d, resume=False, db=db, ses=ses)   # second run: nothing
    assert len(ses.sent) == 4


def test_resume_continues_after_last_address():
    db, ses = FakeDB(), FakeSES(contacts=["a@x.co", "b@x.co", "c@x.co"])
    d = ISSUES[-1]
    db.items[(f"sent#{d['issue']}", "-")] = {"pk": {"S": f"sent#{d['issue']}"}, "sk": {"S": "-"},
                                             "status": {"S": "sending"}, "last": {"S": "a@x.co"}}
    send_issue.run_list(CFG, d, resume=True, db=db, ses=ses)
    assert [m["Destination"]["ToAddresses"][0] for m in ses.sent] == ["b@x.co", "c@x.co"]


def test_a_refused_address_does_not_stop_the_send():
    db, ses = FakeDB(), FakeSES(contacts=["a@x.co", "b@x.co"], fail={"a@x.co": "MessageRejected"})
    send_issue.run_list(CFG, ISSUES[-1], resume=False, db=db, ses=ses)
    assert [m["Destination"]["ToAddresses"][0] for m in ses.sent] == ["b@x.co"]
