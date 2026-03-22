# Index — global steering (`~/.kiro/steering/`)

## Role

This folder holds **stable, cross-cutting preferences** only: principles, engineering habits, collaboration style, output shape. **No** project context (stack, domain, spec, handoff, product architecture).

## Recommended reading order

1. **`00-index.md`** (this file) — scope and precedence
2. **`10-core-principles.md`** — decision constitution
3. **`20-engineering.md`** — engineering expectations
4. **`30-collaboration.md`** — how to work with the agent
5. **`40-output-format.md`** — response shape

## Repo-specific layer

Anything that **varies by repository** lives **in the repo**: `AGENTS.md`, `docs/ai/`, project `.kiro/steering` and `.kiro/skills`, `.cursor/rules`, etc.

If there is a conflict: **the repository wins** over this global steering.

## Executable workflows

Procedures live in **`~/.kiro/skills/`** (on-demand load), not in long steering prose.
