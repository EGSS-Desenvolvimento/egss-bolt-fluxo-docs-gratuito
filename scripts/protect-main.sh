#!/usr/bin/env bash
set -euo pipefail
ORG="${1:?org}"
REPO="${2:?repo}"
SLUG="${3:-}"

gh api -X PUT repos/$ORG/$REPO/branches/main/protection   -H "Accept: application/vnd.github+json"   -f required_pull_request_reviews.required_approving_review_count=1   -f enforce_admins=true   -f required_conversation_resolution=true

if [[ -n "$SLUG" ]]; then
  gh api -X PUT repos/$ORG/$REPO/branches/main/protection/restrictions/apps     -H "Accept: application/vnd.github+json"     -f "apps[]=$SLUG" || echo "Restrição não aplicada (plano GitHub)."
fi
