# NASA VDP — Live Policy Capture

- Source: https://www.nasa.gov/vulnerability-disclosure-policy/
- Fetched: 2026-11-22 (UTC) via proxy (HTTP 200). Text extracted from page; wording preserved.
- This is the authoritative NASA-published policy. The **Bugcrowd engagement brief**
  (https://bugcrowd.com/engagements/nasa-vdp) holds the operative **Targets** list and,
  per this policy, testing is authorized ONLY on targets listed there. That list was NOT
  yet readable from here (SPA; API probing correctly auto-denied) — must be confirmed.

## Letters of Recognition (LOR) — the mission's goal
- Not all reports qualify.
- Duplicates / known issues do NOT qualify.
- **LORs are awarded exclusively for P1–P4 rated reports that have been validated,
  accepted, AND confirmed as fixed.** (So: real, triaged, severity-rated, and remediated.)

## Scope — Systems (from the policy page)
- "Testing is only authorized on the targets listed as in scope. Any domain/property of
  NASA not listed in the targets section is out of scope. Any service not expressly listed
  ... including any connected services, are excluded and not authorized for testing."
- Applies to "all NASA-managed systems that are accessible from the Internet," including
  the registered domain names:
  - `nasa.gov`
  - `usgeo.gov`
  - `globe.gov`
  - `nspires.nasaprs.com`
  - `nsc.nasa.gov`
- OUT: NASA internal-only services. Non-federal systems of vendors/contractors (report to
  the vendor instead). Third-party services themselves (but report NASA data found there).
- Sensitive data to report immediately if found (then STOP): sensitive PII (e.g. SSNs),
  financial info, proprietary/trade-secret info, documents marked e.g. "Top Secret"/"ITAR/EAR".

## Test types NOT authorized (verbatim list)
- Social engineering (e.g. getting a user to click an attacker link).
- Denial of Service, Rate Limiting, or Spamming (e.g. L7 DoS, Slowloris).
- Clickjacking on pages with no sensitive actions.
- Any reports with endpoint `/wp-json/wp/v2/users`.
- Any reports with endpoint `xmlrpc.php`.
- Attacks requiring physical access to a user's device.
- Previously known vulnerable libraries without a working PoC.
- Content spoofing or text injection.
- **Reports from automated tools or scans without accompanying demonstration of exploitability.**
- Software version disclosure without demonstration of exploitability.
- Use of a known-vulnerable library without evidence of exploitability.
- Missing best practices (missing security headers, missing captcha, insecure certs).
- Insecure SSL/TLS issues (ciphers, certificates, etc.).
- Missing security headers (HSTS, CSP, etc.) that don't lead directly to a vulnerability.
- Presence of the "autocomplete" attribute on web forms.
- Host header injection unless you can show it leads to stealing data.
- Insecure cookie settings for non-sensitive cookies.
- Directory Listing.
- Vulnerabilities affecting users of outdated browsers/platforms.
- Descriptive or verbose error messages.
- Any other non-technical vulnerability testing.

## Guidelines (good-faith requirements)
- Avoid impacting availability of production systems. If a non-production/public TEST env
  exists, test EXCLUSIVELY there. Example given: test in `test.gcn.nasa.gov` NOT `gcn.nasa.gov`.
- Notify NASA ASAP after discovering a potential issue.
- Keep vulnerabilities confidential a reasonable time (see 90-day rule below).
- Avoid privacy violations, UX degradation, disruption, and destruction/modification/
  exfiltration of NASA data.
- Use exploits ONLY to the extent necessary to confirm a vulnerability. Do NOT compromise
  or exfiltrate data, establish CLI access/persistence, or pivot to other systems.
- Once a vulnerability exists or sensitive data is encountered: STOP, notify NASA
  immediately, do not disclose to anyone else.
- No compensation (gratitude only); submitting waives claims to compensation.

## Authorization / safe harbor
- Good-faith compliance with this policy = authorized research; NASA won't pursue/recommend
  legal action, and will make authorization known if a third party sues over compliant work.

## Reporting
- **Bugcrowd is the ONLY official channel**: https://bugcrowd.com/engagements/nasa-vdp
- Not for NASA employees/contractors with authorized access.
- Acknowledgement within 3 business days. Info used for defensive purposes only.
- May be shared with CISA and affected vendors/open-source projects.
- Report should: describe the vuln, where found, impact; give detailed reproduction steps
  (PoC scripts/screenshots helpful); English preferred.

## Disclosure timeline
- Refrain from sharing reports with others for **90 days** after initial submission, unless
  otherwise coordinated with NASA.
