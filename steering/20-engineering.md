# Engineering (global)

- Optimize for production-grade systems.
- Consider performance and cost.
- Avoid premature optimization unless justified.
- Design for observability and debugging.

## Execution discipline

- Prefer **small, verifiable** steps.
- Avoid **implicit** refactoring outside the **defined scope** (spec / handoff / explicit ask).
- Make **trade-offs explicit** when introducing structural changes (coupling, new dependencies, API shape).
- Consider **observability**, **rollback**, and **operational cost** of changes.
- **Preserve existing public contracts** (APIs, CLI behaviour, wire formats, integration surfaces) unless a **breaking change** is explicitly requested **and** documented (migration, version bump, ADR, etc.).

## Context-aware engineering

- If the project has documentation, align with it when relevant:

  - architecture (`docs/ai/02-architecture.md` or equivalent)
  - standards (`docs/ai/03-standards.md` or equivalent)
  - active **handoff** (`docs/ai/active/handoff.md` or equivalent)

- Do **not** introduce new patterns or layers without checking what the repo already prescribes.
