# template-kiro-home

**Global, reusable AI engineering layer** for [Kiro](https://kiro.dev) (and compatible agents): steering + procedural skills that apply **across all your repos**.

> **In three lines:** Spec defines intent. Handoff defines execution. Code must follow the handoff.

This is **not** your product codebase — it is the **portable discipline** you sync into `~/.kiro/`.  
Per-repo structure (canon docs, active spec, Cursor rules) lives in **[template-generic-project](https://github.com/LaProgrammerie/template-generic-project)**.

---

## What this is

| Layer | Role |
|-------|------|
| **`steering/`** | Constitution: language, spec vs handoff, anti-drift, scope, engineering habits |
| **`skills/`** | Executable workflows: planning, review, debug, refactor, release, **context-sync** |

Together they form the **home** half of an **AI engineering framework**:

- **`template-kiro-home`** → global runtime (`~/.kiro`)
- **[`template-generic-project`](https://github.com/LaProgrammerie/template-generic-project)** → project runtime (`AGENTS.md`, `docs/ai/`, `.kiro/specs/`, `.cursor/`)

---

## Why use it

- **Reduce drift** between spec, handoff, and code.
- **Enforce scope** — no silent “while we’re here” expansion.
- **Standardize** how agents plan, review, debug, and refactor across repositories.
- **Portable** — one clone; sync to every machine.

**Progressive adoption:** you can start with steering only, add skills over time, and pair with a minimal project template. It is **not** all-or-nothing — but if you ignore handoff and never sync spec projections, the system stops working. **Discipline is the product.**

---

## Install (≈2 minutes)

1. **Clone** (anywhere on disk):

```bash
git clone git@github.com:LaProgrammerie/template-kiro-home.git
cd template-kiro-home
```

2. **Ensure** Kiro has created `~/.kiro` at least once (open Kiro / sign in if needed).

3. **Sync** canonical files into your home:

```bash
chmod +x sync-to-home.sh
./sync-to-home.sh
```

4. **Reload** Kiro (restart app or reload window) so steering and skills are picked up.

### Verify

- In Kiro, confirm global steering/skills are loaded (per Kiro’s UI or docs — there is no single `kiro doctor` CLI guaranteed on all installs).
- Optionally open a repo that uses [`template-generic-project`](https://github.com/LaProgrammerie/template-generic-project) and check that behaviour matches `steering/00-index.md` (repo wins over global when they conflict).

---

## How to use (quick)

Activate or invoke the **skill** that matches the situation (exact invocation depends on Kiro’s skill UI):

| Situation | Skill | What it does |
|-----------|--------|----------------|
| Break down a goal before spec / code | **`planning`** | Structured plan, reusable for requirements → design → tasks |
| Prepare or refresh execution scope | Use your **project** skill `create-handoff` in `.kiro/skills/` (from template-generic-project) — global layer sets *discipline*; handoff file lives in the repo |
| Review a PR / diff | **`code-review`** | Correctness, security, tests; checks **handoff** + **architecture** + **standards** when those files exist |
| Something is broken | **`debugging`** | Reproduce, narrow, fix; flags **spec vs code** and **stale handoff** |
| Safe cleanup | **`refactor`** | Small steps; **no scope creep** outside handoff |
| Before release | **`release-checklist`** | Prod readiness checklist |
| Spec / projections feel out of sync | **`context-sync`** | Compare `.kiro/specs/*`, `current-spec.md`, `handoff.md`; suggest ordered fixes |

**Global `create-handoff`:** this repo does **not** ship it — it lives on the **project** template so it can reference `docs/ai/active/handoff.md`. Global steering still says: *follow the handoff*.

---

## Example flow (illustrative)

User: *“Add a login system.”*

1. **`planning`** — scope, risks, phases → feeds Kiro **requirements** / **design** / **tasks** in the **project** repo.
2. **Spec** under project `.kiro/specs/<feature>/`.
3. Update project **`docs/ai/active/current-spec.md`** (summary).
4. **Project skill `create-handoff`** → **`docs/ai/active/handoff.md`** (executable contract).
5. **Implement** in Cursor (or Copilot) **strictly** from handoff + `docs/ai/03-standards.md`.
6. **`context-sync`** before merge if the spec moved during implementation.

Narrative walkthrough (same story, more detail): [`examples/flow-login.md`](examples/flow-login.md).

---

## Works with

| Repository | Role |
|------------|------|
| **[template-generic-project](https://github.com/LaProgrammerie/template-generic-project)** | Project template: `AGENTS.md`, `docs/ai/`, `.kiro/specs/`, `.cursor/`, `examples/` |

Clone both: sync **this** repo → `~/.kiro`; use **template-generic-project** as the root of each product repo.

---

## What is included vs excluded

**Included:** `steering/`, `skills/`, `sync-to-home.sh`, this README.

**Excluded by design** (never commit from a machine dump): `extensions/`, `powers/`, `settings/`, `argv.json`, tokens, MCP secrets, machine-specific paths.

---

## Update workflow

1. Edit steering or skills in this clone → commit → push.
2. On each machine: `git pull` → `./sync-to-home.sh` → reload Kiro.

---

## Conflict rule

Project **`AGENTS.md`** and project **`.kiro/`** override global steering when they conflict — see `steering/00-index.md`.
