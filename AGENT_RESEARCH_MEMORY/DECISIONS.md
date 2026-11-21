# Decisions (append-only)

## D-001 — 2026-11-21 — GitHub is the durable store
- **Context:** Sessions run in ephemeral cloud VMs; chat and VM state can be lost.
- **Decision:** All important state lives in `AGENT_RESEARCH_MEMORY/` and is committed and
  pushed to the research branch at each milestone. No force-pushes, no history rewrites,
  no pushes to `main`, no automatic PR merges.
- **Consequence:** Any session can resume from `git clone` + `CLAUDE.md`.

## D-002 — 2026-11-21 — Authorization gate before any active testing
- **Context:** Mission targets live US federal government (NASA) production systems.
- **Decision:** No active interaction with NASA assets (not even recon traffic) until the
  user (a) confirms authorized/enrolled participation under NASA VDP terms and (b) gives an
  explicit go-ahead. The agent does not self-authorize testing of third-party systems.
- **Consequence:** Until then, work is limited to infra, methodology, and reading public
  policy/docs. This is consistent with the mission's own escalation rules (ambiguous
  authorization / external action).

## D-003 — 2026-11-21 — Integrity over output
- **Context:** Mission explicitly rejects fabricated/scanner-only "findings".
- **Decision:** Never present a hypothesis or scanner hit as a confirmed vulnerability.
  Every claimed finding needs independent reproduction + evidence + honest confidence.
- **Consequence:** It is acceptable — expected — to report "no validated finding yet".

## D-004 — 2026-11-21 — Network is a hard blocker, raised not bypassed
- **Context:** Default env has limited network, empty allow-list; NASA/Bugcrowd unreachable.
- **Decision:** Do not quietly widen network to government targets. Surface to user; enable
  hosts only with the user's approval, starting with READ-only policy pages.
