---
name: debugging
description: >-
  Systematic debugging with drift checks: spec vs code, outdated handoff,
  reproduce, narrow, minimal fix.
---

# Debugging (global)

## Objective

Find **root cause** with a reproducible method, then propose a **minimal** verifiable fix.

## When to use

- Failing tests, runtime errors, flaky behaviour
- Incident analysis (read-only mode if required)

## Expected inputs

- Exact symptom (message, stack, screenshot)
- Environment, version, reproduction steps
- Suspected recent changes (if known)
- Logs or traces available

## Steps

1. **Reproduce** with a minimal scenario; if impossible, list what is missing.
2. **Narrow:** bisect in time (commits) or space (modules).
3. **Hypotheses:** rank by likelihood; **disprove** with evidence (logs, tests, experiments).
4. **Fix:** target root cause; avoid expensive band-aids when a cleaner fix is reasonable.
5. **Harden:** suggest a small test, assertion, or log to prevent recurrence.

## Drift checks (behaviour mismatch)

When behaviour does not match expectations:

- Check for **spec vs implementation** drift (`.kiro/specs/` or equivalent vs code).
- Check whether **`docs/ai/active/handoff.md`** (or equivalent) is **stale** relative to what was actually built.
- If docs are wrong, recommend updating **spec / handoff / projections** — not only patching code to match outdated text.

## Output format

- Current theory + evidence for / against
- Proposed fix (or options if uncertain)
- Verification steps (commands or scenarios)
