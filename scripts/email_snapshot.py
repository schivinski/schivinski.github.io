#!/usr/bin/env python3
"""Email the analytics snapshots to Bruno's own Gmail (private transport).

The repo and its Actions logs are PUBLIC, so the snapshot never goes in the
logs or in workflow artifacts. This script prints only OK/FAIL and byte sizes.

Env: GMAIL_APP_PASSWORD (Google app password for bruno.schivinski@gmail.com).
Usage: python scripts/email_snapshot.py file1.json [file2.json ...]
"""
import datetime as dt
import gzip
import os
import smtplib
import sys
from email.message import EmailMessage

ADDRESS = "bruno.schivinski@gmail.com"  # sender and recipient (not a secret)


def main(paths):
    pw = os.environ["GMAIL_APP_PASSWORD"].replace(" ", "")
    today = dt.date.today().isoformat()
    msg = EmailMessage()
    msg["From"] = f"Site analytics <{ADDRESS}>"
    msg["To"] = ADDRESS
    msg["Subject"] = f"[analytics-snapshot] {today}"
    msg.set_content(
        "Weekly analytics snapshot for schivinski.com (JSON attached, gzip-compressed).\n"
        "Automated message; read by the analytics dashboard task."
    )
    sent = 0
    for p in paths:
        if not os.path.exists(p):
            print(f"skip: {os.path.basename(p)} missing")
            continue
        data = gzip.compress(open(p, "rb").read())
        name = os.path.basename(p).replace(".json", f"-{today}.json.gz")
        msg.add_attachment(data, maintype="application", subtype="gzip", filename=name)
        print(f"attached {name}: {len(data)} bytes")
        sent += 1
    if not sent:
        print("FAIL: nothing to send")
        sys.exit(1)
    try:
        with smtplib.SMTP_SSL("smtp.gmail.com", 465, timeout=60) as s:
            s.login(ADDRESS, pw)
            s.send_message(msg)
        print("email: sent OK")
    except Exception as e:  # status only
        print(f"email: FAIL {type(e).__name__}")
        sys.exit(1)


if __name__ == "__main__":
    main(sys.argv[1:])
