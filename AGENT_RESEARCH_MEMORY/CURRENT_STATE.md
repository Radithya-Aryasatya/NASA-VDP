# Current State

_Last updated: 2026-11-21 (UTC)_

## Branch
- Research branch: `claude/cloud-execution-durability-xf7w3d` (pushed to origin — durable).
- Default branch (never push, never merge automatically): `main`.

## Mission
See `MISSION.md`. Goal: discover + responsibly disclose one real, previously-unknown
vulnerability in NASA's authorized VDP scope. Integrity bar is high; no fabrication.

## Status summary
- DONE: Durability infra (`CLAUDE.md`, this archive, `scripts/`), pushed to GitHub.
- DONE: GitHub access confirmed working (push succeeded 2026-11-21).
- BLOCKED: **Network** — this (Default) environment is `limited` with an empty allow-list.
  `www.nasa.gov` does not even resolve. No NASA/Bugcrowd page is reachable, so the live
  policy/scope cannot be read and no authorized interaction with targets is possible yet.
- BLOCKED (authorization gate): Active testing has NOT started and will NOT start until
  (a) the user confirms authorized/enrolled participation + explicit go-ahead, and
  (b) the network permits the in-scope hosts. See `DECISIONS.md` D-002/D-003.
- TODO: Read the live NASA VDP policy + Bugcrowd scope once reachable; record exact
  in-scope / out-of-scope assets and rules of engagement in `artifacts/`.

## Environment (verified 2026-11-21)
- Anthropic cloud VM, Linux, 4 vCPU, Python 3.13, Node 22, git, Chromium+Playwright.
- Env `env_01F5GnAWrL2nvhAzDArq4Vd8` "Default": network `limited`, allowed_hosts=[],
  package managers + MCP allowed. No secrets, no setup script.

## Scope & policy (read 2026-11-22)
- Live NASA VDP policy captured: `artifacts/nasa_vdp_policy_2026-11-22.md`.
- Working scope authority: `artifacts/SCOPE_AUTHORITATIVE.md`.
- In-scope registered domains per policy: nasa.gov, usgeo.gov, globe.gov,
  nspires.nasaprs.com, nsc.nasa.gov (NASA-managed, internet-accessible).
- **PENDING:** exact Bugcrowd Targets list (SPA; not readable here, API probing auto-denied).
  No specific host is cleared for interaction until the enrolled user confirms the targets.
- LOR bar: P1–P4, validated + accepted + CONFIRMED FIXED. Automated-scan-only excluded.
- Reporting channel: Bugcrowd only. 90-day non-disclosure.

## Authorization status
- 2026-11-22: User reports **ENROLLED** and authorizes in-scope, non-destructive work on
  their behalf ("stay within track, don't get a penalty"). Policy read; awaiting exact
  Bugcrowd Targets confirmation before touching any host.
- 2026-11-21: User reported NOT enrolled in NASA's VDP yet. => No testing. Local-only
  prep continues. On-ramp written to `ENROLLMENT.md`.

## Open questions for the user
1. Are you an enrolled/authorized participant in NASA's VDP (Bugcrowd), bound by its terms?
2. Do you authorize active, in-scope, non-destructive testing from this cloud environment?
3. May I enable network access to NASA/Bugcrowd hosts (first just to READ the policy;
   later, in-scope targets) via an environment change you approve?
