# AGENT_RESEARCH_MEMORY

Durable research archive for this repository. Everything a new Claude Code session needs
to continue the work lives here (plus Git history). Assume the VM can vanish at any time.

## Files

| File | Purpose | Update policy |
|---|---|---|
| `README.md` | This index and the archive conventions | Rarely |
| `CURRENT_STATE.md` | Snapshot of what is true *now*: goal, branch, status, open items | Overwrite at each checkpoint |
| `NEXT_SESSION_HANDOFF.md` | Concrete next steps for the next session | Rewrite fully before ending/idle |
| `SETUP.md` | How to rebuild the environment from a fresh VM, and how to verify it | When tooling changes |
| `RESEARCH_LOG.md` | Append-only chronological log of work, findings, dead ends | Append only, never rewrite |
| `DECISIONS.md` | Decisions and their rationale (ADR-style) | Append only |
| `sessions/` | One file per session: `YYYY-MM-DD_<short-topic>.md` (optional detail) | Create per session |
| `artifacts/` | Small, reproducible research outputs (notes, tables, summaries) | As produced |

## Conventions

- Dates are absolute (`YYYY-MM-DD`, UTC). Never write "yesterday" or "earlier".
- Every claim of a result points to evidence: a file path, a commit SHA, or a command
  that reproduces it.
- Large or regenerable outputs: commit the *script* that regenerates them, not the
  output. Keep committed artifacts small (< ~5 MB each).
- Never store secrets, credentials or personal data here.
- Status words: `TODO`, `IN PROGRESS`, `BLOCKED (<reason>)`, `DONE (<evidence>)`.
