---
name: planning
description: >-
  Turn a goal into a structured plan suitable for requirements/design/tasks
  workflows: scoped decomposition, dependencies, risks, and explicit non-goals.
---

# Planning (global)

## Objective

Produce an **actionable plan**: ordered work, dependencies, risks, and done criteria — **without** inventing unstated product context.

## Anti-invention guardrails

- **Do not invent** product constraints, domain rules, architecture choices, or team process (branching, review gates, release train) when the user has **not** provided them.
- If something is required to plan safely, list it under **Unknowns / to confirm** instead of assuming.
- Distinguish **facts** (from repo or user) from **assumptions** (label explicitly).

## When to use

- Non-trivial or ambiguous task
- Need to decompose before specifying or implementing

## Expected inputs

- User goal / intended outcome
- Explicit constraints (time, compatibility, quality)
- **Out of scope** if the user mentioned it
- Repo context **only** if the user opened or described the project

## Steps

1. Restate **goal** and **non-goals** in one short paragraph.
2. List **constraints** and **unknowns** (flag what must be validated).
3. Produce a **structured decomposition** — prefer **hierarchical** breakdown (phases → work packages → tasks) over a single flat list when the problem is large.
4. Mark quick wins vs **risky** items; note dependencies between items.
5. Identify **risks** and realistic mitigations.
6. Define **Definition of Done**: verifiable criteria (tests, review, metric, demo).

## Spec workflow alignment

- Output should be **reusable** as input to a spec workflow: clear enough to map to **requirements → design → tasks** without re-deriving intent.
- Prefer **structured sections** (e.g. scope, milestones, task groups) over an unstructured bullet dump.

## Output format

- Structured plan (sections or table)
- Risks + mitigations
- Explicit Definition of Done
- Open questions **only** if blocking
