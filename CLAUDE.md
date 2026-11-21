# CLAUDE.md — Instructions for every Claude Code session

This repository is worked on by Claude Code sessions that may run in **ephemeral cloud
VMs**. Conversation history and VM state are NOT durable. **GitHub is the durable store.**

## On session start (mandatory, before any other work)

1. `git status && git branch -a` — confirm the current branch.
2. Sync with the remote research branch without discarding local work:
   `bash scripts/recover.sh` (fetch + fast-forward/merge; never reset or force).
3. Read, in order:
   - `AGENT_RESEARCH_MEMORY/README.md` — how the archive is organized
   - `AGENT_RESEARCH_MEMORY/CURRENT_STATE.md` — what is true right now
   - `AGENT_RESEARCH_MEMORY/NEXT_SESSION_HANDOFF.md` — exactly what to do next
4. Rebuild the environment per `AGENT_RESEARCH_MEMORY/SETUP.md`, then verify it.
5. **Resume** unfinished work. Do not redo work recorded as complete. Do not assume any
   background process from a previous VM is still running — recover its results from
   files, commits and logs, or re-run it.

## While working

Cycle: Research → Validate → Document → Checkpoint → Commit → Push → Continue.

- After every meaningful milestone, update `CURRENT_STATE.md`, append to
  `RESEARCH_LOG.md`, then run `bash scripts/checkpoint.sh "<message>"`.
- Before context runs low or the session goes idle, rewrite `NEXT_SESSION_HANDOFF.md`
  completely and checkpoint.
- Never leave irreplaceable results only in chat, `/tmp`, or the scratchpad.

## Git rules (non-negotiable)

- Work on the dedicated research branch (see `CURRENT_STATE.md` → "Branch").
- Never push to the default branch (`main`). Never force-push, rebase pushed commits,
  amend pushed commits, or delete/overwrite historical branches.
- Never merge pull requests automatically. Open a PR only when the user asks.
- If a push is rejected, `git fetch origin <branch> && git merge --no-edit FETCH_HEAD`,
  then push again.
- Never commit secrets (tokens, credentials, `.env`).

## Model-independence

Write everything so a future session — possibly a different Claude model with zero
conversational memory — can continue from the repository alone. Prefer explicit facts,
commands, file paths and dates over references like "as discussed".

<!-- Project-specific instructions go below this line. Extend; do not delete the above. -->
