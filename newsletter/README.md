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
| Weekly send | `newsletter/send_issue.py`, job `newsletter` in `.github/workflows/publish.yml` | After each publish: if an issue is dated this week, its page is live and it has not been sent, email it to the list. Issues filled in for earlier weeks are never emailed. |
| Manual tools | `.github/workflows/newsletter.yml` | Test copy to issues@marketingin3.com, preview, send a given issue, resume a stopped send, update the signup function. |
| AWS setup | `newsletter/aws/stack.yml`, `newsletter/aws/deploy.sh` | One CloudFormation stack. GitHub reaches AWS through a trust link (OIDC), so no keys are stored anywhere. |

Settings live in `watch/newsletter.yml`. Bruno's private address appears nowhere: tests go to issues@marketingin3.com,
which Porkbun forwards to him.

## First-time setup

1. **AWS account** (Bruno): create it at aws.amazon.com, choose the paid plan (the sign-up credits still apply),
   then switch the console region to **Asia Pacific (Sydney)**.
2. **Run the setup** (Bruno): open CloudShell (the `>_` icon in the console's top bar) and paste:
   ```
   git clone --depth 1 https://github.com/schivinski/schivinski.github.io && bash schivinski.github.io/newsletter/aws/deploy.sh
   ```
   It prints the signup endpoint, the GitHub role and the DNS records. Paste that output to Claude.
3. **DNS at Porkbun** for marketingin3.com: the 3 DKIM CNAMEs, the MX and TXT on `mail`, and the DMARC TXT that
   deploy.sh prints. Also add email forwarding `issues@marketingin3.com` → Bruno's inbox.
4. **Production access**: SES console → Account dashboard → Request production access (text in the setup notes).
   Until approved, SES can only send to verified addresses, which includes anything @marketingin3.com, so tests work.
5. **Switch on**: put `endpoint` and `aws_role_arn` into `watch/newsletter.yml` (forms appear), run
   *Marketing in 3 email → test*, check the copy, then set `send: true`.

## Day to day

Nothing. Each Monday's publish emails the new issue once. The run summary shows counts only.

- **Test or preview an issue**: Actions → *Marketing in 3 email* → Run workflow → `test` or `preview` (+ issue number).
- **A send stopped part-way**: run `resume`. Nobody gets the issue twice.
- **Pause sending**: set `send: false`. **Hide the forms**: empty `endpoint`.

## Data requests (CloudShell, Sydney region)

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
