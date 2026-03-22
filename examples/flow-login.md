# Example: global skills × project template (login)

This file is **narrative only** — it shows how **template-kiro-home** (global) and **template-generic-project** (repo) work together.

1. **User:** “Add email/password login.”
2. **Global `planning` skill:** break down phases (auth API, storage, sessions, UI), risks, unknowns — output feeds Kiro spec authoring in the **project** repo.
3. **Project:** write `.kiro/specs/login/requirements.md`, `design.md`, `tasks.md`.
4. **Project:** update `docs/ai/active/current-spec.md` (short summary for all tools).
5. **Project skill `create-handoff`:** fill `docs/ai/active/handoff.md` (files allowed, plan, DoD).
6. **Implement** from handoff in Cursor; run tests per `docs/ai/03-standards.md`.
7. **Global `code-review` skill:** check diff vs handoff + `02-architecture.md` + `03-standards.md`.
8. **Global `context-sync` skill:** if tasks changed mid-flight, verify `current-spec.md` and `handoff.md` still match `.kiro/specs/`.

**Takeaway:** global layer = *how* agents behave; project template = *what* you build and where the contracts live.
