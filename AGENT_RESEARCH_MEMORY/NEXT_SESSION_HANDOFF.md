# Next Session Handoff

_Written: 2026-11-21 (UTC)_

## Where things stand
The repository has durability scaffolding only; no research has started. No background
processes were running when this was written.

## Do next
1. Run the start-up procedure in `/CLAUDE.md`.
2. If the user has not stated the research objective, ask for it. Record it in
   `CURRENT_STATE.md` ("Project goal") and as a decision in `DECISIONS.md`.
3. Add any dependencies to `SETUP.md` (and a `requirements.txt` / `package.json` if
   applicable) so a fresh VM can rebuild them.
4. Begin the research cycle; checkpoint with `bash scripts/checkpoint.sh "<msg>"`.

## Warnings
- None yet.
