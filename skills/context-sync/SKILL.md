---
name: context-sync
description: >-
  Compare Kiro spec artefacts with current-spec.md and handoff.md; flag drift
  and list required doc updates before or after implementation.
---

# Context sync (global)

## Objective

Check **alignment** between native spec, cross-tool summary, and execution contract; **surface drift** and suggest **concrete updates** — without editing the repo unless the user asks.

## When to use

- After material changes under `.kiro/specs/<feature>/`
- Before a big implementation push
- When behaviour or code no longer matches written scope
- Periodic hygiene on active work

## Expected inputs

- Feature folder path under `.kiro/specs/` (if present)
- Paths to `docs/ai/active/current-spec.md` and `docs/ai/active/handoff.md` if the repo uses that layout (or equivalents)
- Optional: recent code change summary

## Steps

1. Read **tasks** (and design/requirements if needed) under `.kiro/specs/<feature>/`.
2. Read `current-spec.md`: **State**, summary, scope, acceptance criteria.
3. Read `handoff.md`: allowed scope, files to change / not change, plan, DoD.
4. Compare **triple**:

   - Does `current-spec.md` reflect the **same** scope and phase as the spec folder?
   - Does `handoff.md` match the **current** tasks and design intent?
   - Any **implicit** work in handoff that is **not** in tasks (or the reverse)?

5. For each mismatch, propose **exactly** what to edit (file + section + intent), in order: spec → `current-spec.md` → `handoff.md` → code.

## Output format

- **Aligned / Drift detected** (one-line verdict)
- **Drift table:** item | location A | location B | suggested fix
- **Ordered action list** (what to update first)
- If no project uses this layout, state that and stop — do not invent paths

## Rules

- Stay **global / portable**: no repo-specific stack rules; only the **sync pattern** between spec artefacts and projections.
- Do not assume hooks auto-fixed anything.
