#!/usr/bin/env bash
# Verify the tools this project expects. Extend as dependencies are added.
cd "$(git rev-parse --show-toplevel)"
fail=0
check() { if command -v "$1" >/dev/null 2>&1; then echo "OK      $1 ($($1 --version 2>&1 | head -1))"; else echo "MISSING $1"; fail=1; fi; }
check git; check python3; check node
for f in CLAUDE.md AGENT_RESEARCH_MEMORY/README.md AGENT_RESEARCH_MEMORY/CURRENT_STATE.md \
         AGENT_RESEARCH_MEMORY/NEXT_SESSION_HANDOFF.md AGENT_RESEARCH_MEMORY/SETUP.md; do
  [ -f "$f" ] && echo "OK      $f" || { echo "MISSING $f"; fail=1; }
done
echo "Branch: $(git rev-parse --abbrev-ref HEAD)  HEAD: $(git rev-parse --short HEAD)"
exit $fail
