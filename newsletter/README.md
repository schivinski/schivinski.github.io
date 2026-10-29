# Marketing in 3 by email

Readers sign up on the site, confirm by email, and get each new issue on the Monday it is published.
Everything runs on Amazon SES in Sydney (ap-southeast-2) plus this repository; there is no newsletter service.
The AWS project uses the new AWS experience, which allows one Region per project, so everything lives in ap-southeast-2.

## How it fits together

| Part | Where | What it does |
|---|---|---|
| Signup forms | `scripts/build_watch.py` (`email_form`), `watch/subscribe.qmd` | Card on the Subscribe page, band in every issue under the coffee prompt. Hidden while `endpoint` in `watch/newsletter.yml` is empty. |
| Signup function | `newsletter/lambda/handler.py` (AWS Lambda) | `/subscribe` sends a confirmation email; `/confirm` (called by the Subscribe page from the link in that email) adds the address to the list and records consent. Honeypot field, rate limits, no raw IPs stored. |
| Subscriber list | SES contact list `marketing-in-3`, topic `weekly` | SES adds the unsubscribe link and one-click unsubscribe header to every issue and removes people who leave. Bounces and complaints are suppressed automatically. |
| Weekly email | `newsletter/send_issue.py --export` (publish workflow) | Each build writes this week's email, ready to send, to `/watch/email/latest.json` on the site. Only an issue dated this week gets in, so issues filled in for earlier weeks are never emailed. |
| Sender | `newsletter/lambda/sender.py` (AWS Lambda, hourly) | Reads that file every hour; if it holds an issue not yet sent and `send` is on, emails it to the list once. A send that runs out of time is finished next hour, nobody gets it twice. |
| Delivery reports | CloudWatch Logs `/aws/events/marketing-in-3-ses` (30 days) | Every send, delivery, bounce, complaint, delay and unsubscribe, with the receiving server's reply. Read with `aws logs tail /aws/events/marketing-in-3-ses --since 1h`. |
| AWS setup | `newsletter/aws/stack.yml`, `newsletter/aws/deploy.sh` | One CloudFormation stack. GitHub has no AWS access at all (the AWS project does not allow GitHub sign-in links), so nothing secret is stored in the repo or on GitHub. |

Settings live in `watch/newsletter.yml` (forms on/off, sending on/off) and the stack (sender address, test address,
speed). Bruno's private address appears nowhere: tests go to issues@marketingin3.com, which Porkbun forwards to him.

## First-time setup

1. **AWS project** (done): new AWS experience, selected Region Asia Pacific (Sydney).
2. **Run the setup**: `bash newsletter/aws/deploy.sh` from anywhere signed in with `aws login` (or CloudShell). It prints
   the signup endpoint and the DNS records. Safe to re-run; it also uploads code changes to both functions.
3. **DNS at Porkbun** for marketingin3.com: the 3 DKIM CNAMEs, the MX and TXT on `mail`, and the DMARC TXT that
   deploy.sh prints. Also email forwarding `issues@marketingin3.com` to Bruno's inbox.
4. **Production access**: SES console (Sydney) → Account dashboard → Request production access. Until approved, SES
   only sends to verified addresses, which includes anything @marketingin3.com, so tests work.
5. **Switch on**: put `endpoint` into `watch/newsletter.yml` (forms appear), send a test, then set `send: true`.

## Production access

Granted 30 Oct 2026 (case 179264342000179): up to 50,000 emails a day, 14 a second. Forms and sending switched on
the same day. The first request was held for more information on 22 Oct and answered by Bruno on 24 Oct.

## Day to day

Nothing. A Monday issue is emailed within the hour after its page goes live.

- **Test email** (one copy to issues@marketingin3.com): Lambda console → `marketing-in-3-sender` → Test with
  `{"test": true}`, or `aws lambda invoke --function-name marketing-in-3-sender --payload '{"test":true}' --cli-binary-format raw-in-base64-out out.json`.
- **Check without sending**: payload `{"dry_run": true}` reports the issue and the number of readers.
- **Preview locally**: `python newsletter/send_issue.py --preview [--issue N]` writes the email to `newsletter/out/`.
- **Pause sending**: `send: false`. **Hide the forms**: empty `endpoint`.

## Data requests (CloudShell or `aws login`, Sydney region)

```bash
L=marketing-in-3
# how many confirmed readers
aws sesv2 list-contacts --contact-list-name $L --filter 'FilteredStatus=OPT_IN,TopicFilter={TopicName=weekly}' --query 'length(Contacts)'
# export the list
aws sesv2 list-contacts --contact-list-name $L --filter 'FilteredStatus=OPT_IN,TopicFilter={TopicName=weekly}' --query 'Contacts[].EmailAddress' --output text | tr '\t' '\n' > readers.txt
# what is held about one person (access request)
E=reader@example.com
aws sesv2 get-contact --contact-list-name $L --email-address $E
aws dynamodb query --table-name $L --key-condition-expression 'pk = :p' --expression-attribute-values "{\":p\":{\"S\":\"consent#$E\"}}"
# delete one person (erasure request): list entry, then consent records
aws sesv2 delete-contact --contact-list-name $L --email-address $E
aws dynamodb query --table-name $L --key-condition-expression 'pk = :p' --expression-attribute-values "{\":p\":{\"S\":\"consent#$E\"}}" --query 'Items[].sk.S' --output text | tr '\t' '\n' | while read s; do aws dynamodb delete-item --table-name $L --key "{\"pk\":{\"S\":\"consent#$E\"},\"sk\":{\"S\":\"$s\"}}"; done
```

## Costs

SES bills per recipient: about USD 0.10 per 1,000 emails on pay-as-you-go (switch to it in the SES console;
new accounts start on the Essentials plan at 0.16). A weekly issue to 1,000 readers is about USD 0.45 a month.
Lambda and DynamoDB use is a fraction of a cent at this size.

## Tests

`python -m pytest newsletter/tests -q` (signup and sending logic, with stand-ins for AWS).
`python newsletter/send_issue.py --preview` writes the current issue's email to `newsletter/out/`.
