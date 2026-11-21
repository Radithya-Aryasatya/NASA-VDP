# MISSION

## Objective
Independently discover, validate, and responsibly disclose at least one previously
unknown security vulnerability within **NASA's officially authorized Vulnerability
Disclosure Program (VDP)**, aiming for an official NASA Letter of Recognition.

- Policy: https://www.nasa.gov/vulnerability-disclosure-policy/
- Program (Bugcrowd): https://bugcrowd.com/engagements/nasa-vdp

## What counts as success
A single, genuine, previously-unknown vulnerability in an **in-scope** NASA asset, with:
- reproducible evidence (exact request/response, steps, screenshots),
- demonstrated impact,
- a stated confidence level,
- disclosed through the official channel **only after the operator (the user) approves**.

## Hard integrity constraints (non-negotiable)
1. **No fabrication.** Never invent a finding, inflate severity, or present a hypothesis
   as a confirmed vulnerability. A scanner hit is a lead, not a finding.
2. **Scope is law.** Only touch assets the *current live* NASA policy explicitly authorizes.
   Re-read the live policy before any interaction; do not rely on remembered scope.
3. **No destructive / prohibited testing.** No DoS, no brute force, no mass/automated
   scanning that stresses targets, no social engineering, no physical testing, no
   accessing/modifying/exfiltrating data beyond the minimum proof-of-concept, no
   persistence, no lateral movement.
4. **Minimal footprint.** Use the least intrusive test that proves a point. Rate-limit.
   Identify research traffic as the policy requires.
5. **No external action without operator approval.** Do not submit reports, email NASA or
   Bugcrowd, or take any consequential external action until the user explicitly approves.
6. **Authorization must be real.** Active testing proceeds only once the user confirms they
   are an enrolled/authorized participant operating under the program's terms, and the
   environment is permitted to reach the targets.

## Operator (user) = the authorized researcher
This agent performs technical investigation on the user's behalf and under the user's
authorization. The agent does not self-authorize testing of third-party/government systems.
