#!/usr/bin/env bash
# Sync the current research branch with origin WITHOUT discarding local work.
# Never resets, rebases or force-pushes.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [ "$BRANCH" = "main" ] || [ "$BRANCH" = "master" ]; then
  echo "WARNING: on default branch '$BRANCH'. Check out the research branch listed in AGENT_RESEARCH_MEMORY/CURRENT_STATE.md." >&2
fi
for i in 1 2 3 4; do
  if git fetch origin "$BRANCH" 2>/dev/null; then break; fi
  if ! git ls-remote --exit-code --heads origin "$BRANCH" >/dev/null 2>&1; then
    echo "Remote branch '$BRANCH' does not exist yet; nothing to sync."; exit 0
  fi
  sleep $((2**i))
done
if ! git diff --quiet || ! git diff --cached --quiet; then
  git stash push -u -m "recover.sh auto-stash $(date -u +%FT%TZ)"
  STASHED=1
fi
git merge --no-edit --ff FETCH_HEAD
if [ "${STASHED:-0}" = 1 ]; then git stash pop || echo "Stash pop had conflicts; resolve them (stash kept)." >&2; fi
echo "Synced '$BRANCH' at $(git rev-parse --short HEAD)."
echo "Next: read AGENT_RESEARCH_MEMORY/{README,CURRENT_STATE,NEXT_SESSION_HANDOFF}.md"
