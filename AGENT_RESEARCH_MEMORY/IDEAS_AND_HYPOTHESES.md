# Ideas and Hypotheses

> Seeded from general knowledge of NASA's VDP as of training. **Every item here is
> UNVERIFIED and must be checked against the live policy/scope before any action.**
> Nothing below authorizes testing.

## Methodology directions (once authorized + network-enabled)
- **Scope-first mapping.** Enumerate exactly what the live policy lists as in-scope
  (historically broad: NASA-operated web properties under *.nasa.gov, plus specific
  apps/APIs). Record inclusions AND exclusions verbatim. Out-of-scope = do not touch.
- **Attack-surface inventory (passive first).** Public, non-intrusive recon of in-scope
  hosts: certificate transparency logs, public DNS, published API docs, open-source NASA
  repos (github.com/nasa) for leaked endpoints/credentials/misconfig in *public* code.
- **Vuln classes worth manual attention** (not scanner spray):
  - IDOR / broken object-level authorization on NASA web apps & APIs.
  - Authn/session flaws, missing access control on admin/internal endpoints exposed pub.
  - SSRF in features that fetch URLs (data portals, proxies).
  - Information disclosure: verbose errors, exposed .git/.env/config, debug endpoints,
    directory listings, exposed cloud storage (S3/GCS) tied to NASA assets.
  - Subdomain takeover on dangling *.nasa.gov CNAMEs (classic VDP win, low-touch).
  - Injection (SQLi/XSS) where user input reaches responses — manual, surgical PoC only.
  - Secrets in public NASA GitHub orgs / open data / JS bundles.
- **Highest signal / lowest risk early bets:** subdomain takeover candidates, secrets in
  public code, and misconfig/info-disclosure — these often qualify and need little or no
  intrusive interaction with production.

## Why these
VDPs reward real, reproducible, impactful bugs. Low-touch classes (takeover, public
secret exposure, misconfig) fit the integrity + minimal-footprint constraints best and
are realistic for an autonomous agent to find without destructive testing.
