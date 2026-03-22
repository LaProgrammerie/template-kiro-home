---
name: code-review
description: >-
  Structured code review: correctness, security, tests; checks alignment with
  handoff and project docs when they exist.
---

# Code review (global)

## Objective

Review a change **systematically** and return a **prioritized** action list without unsolicited large rewrites.

## When to use

- Before merging a substantial PR or diff
- On explicit review request

## Expected inputs

- Diff, file list, PR link, or change summary
- Stated intent or ticket (if any)
- Known constraints (perf, compatibility, security)

## Steps

1. **Map** touched files and stated or carefully inferred intent.
2. **Correctness:** logic, errors, edge cases, API contracts, concurrency where relevant.
3. **Security:** authz, injection, secrets, unsafe defaults.
4. **Tests:** new paths covered, regression risk.
5. **Maintainability:** coupling or readability **only** if it blocks evolution or reliability.

## Documentation alignment (when the repo has it)

If project docs exist, verify consistency with:

- `docs/ai/active/handoff.md` (or equivalent) — scope and allowed files
- `docs/ai/02-architecture.md` (or equivalent) — boundaries and patterns
- `docs/ai/03-standards.md` (or equivalent) — conventions and commands

Call out **drift** between code and these documents as review findings.

## Output format

- **Summary** in 2–4 lines
- **P0 / P1 / P2** with location (file, symbol, or line when possible) and **concrete** suggestion
- No massive rewrite unless requested
