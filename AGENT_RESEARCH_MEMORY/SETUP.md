# Environment Setup and Verification

Goal: a fresh cloud VM can be brought to a working state using only this file.

## 1. Sync the repository
```bash
bash scripts/recover.sh
```

## 2. Install dependencies
_None yet._ When dependencies are added, list exact install commands here, e.g.:
```bash
# python3 -m pip install -r requirements.txt
# npm ci
```

## 3. Verify
```bash
bash scripts/verify_env.sh
```
Expected: every line reports `OK`. Fix anything that reports `MISSING` before working.

## Notes
- Outbound HTTPS goes through the environment's proxy; network access depends on the
  environment's network policy.
- Preinstalled: Python 3, Node, git, Chromium + Playwright (do not reinstall Playwright).
