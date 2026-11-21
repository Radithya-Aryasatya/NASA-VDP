# Next Session Handoff

_Written: 2026-11-21 (UTC)_

## Read first
`MISSION.md`, then `CURRENT_STATE.md`, then this file. Follow `/CLAUDE.md` startup steps.

## Where things stand
- Durability infra + mission archive exist and are pushed to the research branch.
- GitHub push works.
- **Two blockers owned by the user, both open as of this writing:**
  1. **Enrollment/authorization gate** — as of 2026-11-21 the user is NOT enrolled in
     NASA's VDP. No active testing until they enroll (see `ENROLLMENT.md`) AND give an
     explicit go-ahead (D-002). Check if they have enrolled before doing anything network.
  2. **Network** — Default env (`env_01F5GnAWrL2nvhAzDArq4Vd8`) is `limited`, allow-list
     empty; `www.nasa.gov`/`bugcrowd.com` unreachable. Need the user to approve enabling
     hosts (D-004). Start READ-only (policy pages) before anything else.

## Do next (in order)
1. Check whether the user answered the authorization questions in `CURRENT_STATE.md`.
   - If NO: do not test. Continue safe work (methodology, tooling that runs locally only).
   - If YES + network opened: fetch the LIVE policy + Bugcrowd scope. Write the exact
     in-scope / out-of-scope lists and rules of engagement to
     `artifacts/nasa_vdp_scope_<date>.md`. Treat that file as the authority.
2. Only against explicitly in-scope assets, begin PASSIVE recon first (CT logs, public DNS,
   public NASA GitHub). Prefer low-touch classes: subdomain takeover, public secret
   exposure, misconfig/info-disclosure (see `IDEAS_AND_HYPOTHESES.md`).
3. For any lead: reproduce independently, capture exact evidence, rate confidence, write it
   up in `artifacts/`. Do NOT submit anything externally — surface to the user for approval.
4. Checkpoint often: `bash scripts/checkpoint.sh "<msg>"`.

## Warnings
- Do not widen network to NASA targets without the user's approval.
- Do not run stressful/automated scanners against production. Minimal footprint only.
- No finding is "fixed" or "accepted" unless NASA confirms it.
