#!/usr/bin/env bash
# Commit all changes and push to the current research branch, with retries.
# Usage: bash scripts/checkpoint.sh "short description of milestone"
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
MSG="${1:?usage: checkpoint.sh \"message\"}"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
case "$BRANCH" in main|master) echo "Refusing to checkpoint on default branch '$BRANCH'." >&2; exit 1;; esac
git add -A
if git diff --cached --quiet; then echo "Nothing to commit."; else
  git commit -m "checkpoint: $MSG" ${CHECKPOINT_TRAILER:+-m "$CHECKPOINT_TRAILER"}
fi
for i in 1 2 3 4 5; do
  if git push -u origin "$BRANCH"; then echo "Pushed $(git rev-parse --short HEAD) to $BRANCH."; exit 0; fi
  if [ "$i" -lt 5 ]; then
    # If rejected because remote moved ahead, merge (never force).
    git fetch origin "$BRANCH" 2>/dev/null && git merge --no-edit FETCH_HEAD || true
    sleep $((2**i))
  fi
done
echo "Push failed after retries. Work is committed locally; retry before the VM expires." >&2
exit 1
