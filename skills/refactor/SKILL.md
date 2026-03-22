---
name: refactor
description: >-
  Safe refactoring in small verifiable steps; no scope creep outside handoff
  or explicit request.
---

# Refactor (global)

## Objective

Improve structure and readability **without changing observable behaviour**, in **verifiable** steps.

## When to use

- Hard-to-follow, duplicated, or overly coupled code
- Before adding a feature on brittle structure

## Expected inputs

- Scope (files, module, or symptom)
- Tests or verification commands (if none, say so)
- Constraints (public API, backward compatibility, performance)

## Scope discipline

- **Do not refactor outside the defined scope** (handoff, spec slice, or explicit user request).
- If broader cleanup is desirable, list it as **follow-ups** rather than doing it silently.

## Steps

1. Clarify **goal:** readability, layering, targeted performance — do not mix goals in one step.
2. **Phased plan** if scope is large — propose **before** editing.
3. **Small steps:** one transformation at a time; run tests / checks after each step when possible.
4. Preserve **public contracts** unless a breaking change is explicitly requested (then document migration).
5. Remove dead code only when **sure** it is unused.

## Output format

- Ordered plan → changes made or proposed
- **Risks** and **rollback** lever
- Remaining work if partial
