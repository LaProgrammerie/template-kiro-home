---
name: release-checklist
description: >-
  Production readiness: versioning, changelog, tests, build, config, migrations,
  deploy and rollback — stack-agnostic unless the repo specifies otherwise.
---

# Release checklist (global)

## Objective

Verify **production readiness** in a repeatable way: build, config, data, deploy, rollback — without assuming a stack unless provided.

## When to use

- Before tag, release, or production deploy
- Before a sensitive production window

## Expected inputs

- Release type (library, service, app) if relevant
- Team process (CI, branches) if known
- Whether migrations / infra changes are included

## Steps

1. **Version & changelog** aligned with the shipped delta.
2. **Quality:** tests, lint, build on a clean tree (or project equivalent).
3. **Config & secrets:** no leaks; operator-facing env vars documented.
4. **Data / migrations:** forward/backward compatibility, backup, data rollback plan.
5. **Deploy:** who does what, window, monitoring/alerts during and after.
6. **Rollback:** concrete steps if the release fails.

## Output format

- Checklist with **OK / FAIL / N/A** per line
- **Blockers** at the top if any critical item fails
- Stay brief
