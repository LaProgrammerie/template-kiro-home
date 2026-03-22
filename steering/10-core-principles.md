# Core principles (global)

Cross-repo “constitution.” For software quality heuristics, see bullets at the end. **Repository rules always override** when they define stricter or different policy.

## Language policy

All **persistent artefacts** should be written in **English**:

- specs
- handoffs
- documentation intended to live in the repo
- code comments (when adding new ones)
- rules and hook messages checked into the repo

**Conversational** chat with the user may use any language the user prefers.

## Spec vs execution

- **Specs** define intent and structure (requirements, design, tasks).
- **Handoff** defines **executable scope** for the current implementation slice.

Implementation must follow the **handoff** strictly unless the user explicitly widens scope and updates spec/handoff.

## Source of truth

- Do **not** duplicate sources of truth.
- When a repo provides a context map and doc hierarchy (e.g. `docs/ai/context-map.md`, `AGENTS.md`), **follow them** before inventing parallel “truth.”

## Drift prevention

If implementation **diverges** from spec or handoff:

1. Update the **spec** (or agree the spec was wrong).
2. Update **handoff** / projections (`current-spec.md` where used).
3. **Then** change code.

Never **silently** diverge in code alone.

## Scope discipline

Do **not** expand scope beyond what is **defined** (spec, handoff, or explicit user request). “While we’re here” refactors or features are out of scope unless asked.

## Engineering heuristics (global)

- Prioritize robustness, maintainability, scalability.
- Avoid unnecessary abstractions.
- Prefer explicitness over magic.
- Always state assumptions.
- Propose alternatives when trade-offs matter.
- **Never optimize for cleverness. Optimize for clarity and correctness.**
