# Claude Code Skills For Lily AI Workflows

These are thin Claude Code skill wrappers. Each skill lives in a folder with a `SKILL.md` file and delegates to one shared workflow in `~/.claude/lily-workflows/`.

## Skills

- `lily-progress` -> `progress-check.md`
- `lily-recap` -> `recap.md`
- `lily-next` -> `next-phase.md`
- `lily-plan` -> `create-plan.md`
- `lily-deep-plan` -> `create-plan-deep.md`
- `lily-plan-check` -> `plan-check.md`
- `lily-execute` -> `execute-plan.md`
- `lily-verify` -> `verify-work.md`
- `lily-commit` -> `git-checkpoint.md`
- `lily-quick` -> `quick.md`
- `lily-backlog` -> `backlog.md`
- `lily-debug` -> `debug.md`
- `lily-review` -> `review.md`
- `lily-ship` -> `ship.md`
- `lily-bootstrap` -> `bootstrap-project.md`
- `lily-adopt` -> `adopt-existing-project.md`

## Install

Run from the repo root:

```bash
./install-claude-code.sh
```

That copies:

- `workflows/` -> `~/.claude/lily-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`
