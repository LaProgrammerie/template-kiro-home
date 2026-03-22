# template-kiro-home

Canonical **global** Kiro layer: **`steering/`** and **`skills/`** only.  
Use this repo to version, share, and bootstrap `~/.kiro` on any machine.

## What is included

| Path | Purpose |
|------|---------|
| `steering/` | Global principles, engineering habits, collaboration style, output format |
| `skills/` | Portable procedural skills (planning, review, debug, refactor, release, context-sync) |

## What is **not** included (by design)

Do **not** commit or copy from here:

- `extensions/`, `powers/`, `settings/`, `argv.json`
- API tokens, MCP headers, machine paths, IDE-specific junk

Keep secrets and local config **only** on the machine (or use env / OS keychain + Kiro UI).

## Install on a new machine

1. Clone this repo (anywhere).
2. Ensure `~/.kiro` exists (Kiro usually creates it).
3. Run:

```bash
./sync-to-home.sh
```

4. Restart or reload Kiro if it caches steering/skills.

## Update from this repo after editing

Edit files in the clone, commit, push; on each machine pull and run `./sync-to-home.sh` again.

## Conflict with project repos

Repository `AGENTS.md` and project `.kiro/` **override** global steering when they conflict — see `steering/00-index.md`.
