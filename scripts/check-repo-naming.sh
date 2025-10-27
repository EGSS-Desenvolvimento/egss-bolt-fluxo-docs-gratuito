#!/usr/bin/env bash
set -euo pipefail
EXPECTED="-gratuito"
NAME=$(basename "$(git remote get-url origin 2>/dev/null || echo .)")
NAME=${NAME%.git}
if [[ "$NAME" != *"$EXPECTED" ]]; then
  echo "❌ Repo deve terminar com '$EXPECTED'"
  exit 1
fi
echo "✅ Nome OK"
