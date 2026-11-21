# Decisions (append-only)

## D-001 — 2026-11-21 — GitHub is the durable store
- **Context:** Sessions run in ephemeral cloud VMs; chat and VM state can be lost.
- **Decision:** All important state lives in `AGENT_RESEARCH_MEMORY/` and is committed and
  pushed to the research branch at each milestone. No force-pushes, no history rewrites,
  no pushes to `main`, no automatic PR merges.
- **Consequence:** Any session can resume from `git clone` + `CLAUDE.md`.
