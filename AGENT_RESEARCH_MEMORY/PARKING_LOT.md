# Parking Lot (deferred / maybe-valuable, not now)

- Build a reproducibility harness (record exact HTTP req/resp + hash) for any PoC.
- Build a scope-checker that refuses to run any request against a host not on the parsed
  in-scope allow-list (defense against accidental out-of-scope testing).
- CT-log + DNS passive subdomain inventory tool for in-scope apex domains.
- Dangling-DNS / subdomain-takeover detector (passive CNAME resolution checks).
- Public-secret scanner over NASA public GitHub orgs (gitleaks/trufflehog on *public* repos only).
- Nothing here is authorized to run against NASA targets until scope + go-ahead exist.
