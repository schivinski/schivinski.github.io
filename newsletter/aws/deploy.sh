#!/usr/bin/env bash
# Sets up (or updates) everything Marketing in 3 needs in AWS, in the project's Region (Asia Pacific, Sydney).
# The new AWS experience allows one Region per project. Run it in AWS CloudShell, or anywhere signed in with
# `aws login` (set AWS_PROFILE), with:
#
#   git clone --depth 1 https://github.com/schivinski/schivinski.github.io && bash schivinski.github.io/newsletter/aws/deploy.sh
#
# Safe to run again: it updates what is there and never deletes the subscriber list.
set -euo pipefail

REGION="${AWS_REGION_OVERRIDE:-ap-southeast-2}"
STACK="marketing-in-3"
HERE="$(cd "$(dirname "$0")" && pwd)"
export AWS_DEFAULT_REGION="$REGION" AWS_PAGER=""

echo "== Marketing in 3: setting up in $REGION =="
aws sts get-caller-identity --query Account --output text >/dev/null

PARAMS=()
if aws cloudformation describe-stacks --stack-name "$STACK" >/dev/null 2>&1; then
  echo "Updating the existing setup."
else
  echo "First run: creating everything."
  SALT="$(python3 -c 'import secrets; print(secrets.token_hex(32))')"
  PARAMS+=("HashSalt=$SALT")
  if aws iam list-open-id-connect-providers --output text | grep -q "token.actions.githubusercontent.com"; then
    PARAMS+=("CreateGitHubOidcProvider=false")
  fi
fi

DEPLOY=(aws cloudformation deploy --stack-name "$STACK" --template-file "$HERE/stack.yml"
        --capabilities CAPABILITY_NAMED_IAM --no-fail-on-empty-changeset)
if [ "${#PARAMS[@]}" -gt 0 ]; then DEPLOY+=(--parameter-overrides "${PARAMS[@]}"); fi
"${DEPLOY[@]}"

echo "Uploading the signup function."
TMP="$(mktemp -d)"
( cd "$HERE/../lambda" && python3 -m zipfile -c "$TMP/fn.zip" handler.py )
aws lambda update-function-code --function-name marketing-in-3-signup --zip-file "fileb://$TMP/fn.zip" >/dev/null
aws lambda wait function-updated --function-name marketing-in-3-signup
rm -rf "$TMP"

out() { aws cloudformation describe-stacks --stack-name "$STACK" --query "Stacks[0].Outputs[?OutputKey=='$1'].OutputValue" --output text; }
ENDPOINT="$(out SignupEndpoint)"
ROLE="$(out GitHubRoleArn)"
DOMAIN="marketingin3.com"

echo
echo "================ DONE. Copy everything below into the chat with Claude ================"
echo "endpoint: $ENDPOINT"
echo "aws_role_arn: $ROLE"
echo
echo "DNS records to add at Porkbun for $DOMAIN (Host is what goes before .$DOMAIN):"
aws sesv2 get-email-identity --email-identity "$DOMAIN" \
  --query 'DkimAttributes.Tokens' --output text | tr '\t' '\n' | while read -r t; do
  [ -n "$t" ] && echo "  CNAME  ${t}._domainkey   ->  ${t}.dkim.amazonses.com"
done
echo "  MX     mail                     ->  10 feedback-smtp.$REGION.amazonses.com"
echo "  TXT    mail                     ->  v=spf1 include:amazonses.com ~all"
echo "  TXT    _dmarc                   ->  v=DMARC1; p=none; adkim=r; aspf=r"
echo
SANDBOX="$(aws sesv2 get-account --query 'ProductionAccessEnabled' --output text)"
echo "Production access: $SANDBOX   (False means still in the sandbox: request production access next)"
echo "======================================================================================="
