# Becoming an Authorized NASA VDP Participant

_Status: user is NOT enrolled as of 2026-11-21. No active testing until this is done._

> This guidance is from general knowledge; the environment cannot currently reach the live
> policy to verify it. The **live policy page governs** — the user can open it in a normal
> browser and confirm the exact wording. Where this file and the live policy differ, the
> live policy wins.

## What NASA's VDP is
- A **Vulnerability Disclosure Program** (not a paid bug bounty). Hosted on Bugcrowd.
- Reward is recognition, not money: valid, accepted reports can earn a NASA **Letter of
  Recognition / acknowledgement**.
- Policy: https://www.nasa.gov/vulnerability-disclosure-policy/
- Program: https://bugcrowd.com/engagements/nasa-vdp

## How "authorization" works for a public VDP
A public VDP typically authorizes **anyone who reads, accepts, and strictly follows the
policy** — the policy text itself is the grant of authorization ("safe harbor") for
good-faith testing that stays in scope. There is usually no gated application; the steps are:

1. Create a researcher account on Bugcrowd (https://bugcrowd.com).
2. Open the NASA VDP engagement and **read the full brief**: scope (in/out), targets,
   permitted methods, prohibited actions, and reporting instructions.
3. **Accept** the program terms / rules of engagement where prompted.
4. Only then, test **strictly within the stated scope** and submit findings via Bugcrowd.

Going outside scope, or using prohibited methods (DoS, brute force, heavy automated
scanning, social engineering, data exfiltration beyond PoC, etc.), **voids** the safe harbor.

## What the user needs to decide / provide to unblock this mission
- Confirm they have completed steps 1–3 above (accepted the live policy terms).
- Decide whether they authorize this agent to perform in-scope, non-destructive technical
  investigation **on their behalf**, from this cloud environment, under their account's
  authorization.
- Approve enabling network access to the specific in-scope hosts (read-only policy first).

## Note on the environment
Even after enrollment, active testing requires the environment's network to permit the
in-scope hosts (currently blocked). That is a separate, user-approved step.
