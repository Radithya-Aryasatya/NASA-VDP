# Authoritative Working Scope (the file that governs what may be touched)

_Last updated: 2026-11-22. Primary source: nasa_vdp_policy_2026-11-22.md + Bugcrowd brief._

## Rule of operation
Interact ONLY with assets confirmed in-scope by BOTH the NASA policy AND the Bugcrowd
"Targets" list. When in doubt, treat as OUT of scope. Never touch anything out of scope.

## In-scope registered domains (from NASA policy page; internet-accessible NASA-managed)
- nasa.gov
- usgeo.gov
- globe.gov
- nspires.nasaprs.com
- nsc.nasa.gov

> PENDING: exact Bugcrowd Targets entries (wildcards? specific hosts? excluded subdomains?).
> Not yet readable from this environment. MUST be confirmed with the enrolled user before
> any interaction with a specific host. Until confirmed, no host is cleared for testing.

## Hard OUT of scope
- NASA internal-only services.
- Vendor/contractor non-federal systems (report to the vendor).
- Third-party services themselves (but report NASA data found on them).
- Anything not expressly listed in the Bugcrowd Targets section.

## Production-safety rule
- Do not impact production availability. Where a public TEST environment exists, use ONLY
  that (policy example: test.gcn.nasa.gov, not gcn.nasa.gov).

## Prohibited methods (summary — full list in policy capture)
No DoS/rate-limit/spam, no social engineering, no physical, no automated-scan-only reports,
no pivoting/persistence/data exfiltration, minimal footprint, stop-on-finding.

## Low-value / explicitly-excluded finding classes (do NOT chase as "findings")
Missing headers, TLS/cipher/cert issues, directory listing, verbose errors, version
disclosure, autocomplete attribute, non-sensitive cookie flags, /wp-json/wp/v2/users,
xmlrpc.php, clickjacking on non-sensitive pages, known-vuln-library without PoC.
=> A qualifying report needs DEMONSTRATED exploitability and real impact (P1–P4).
