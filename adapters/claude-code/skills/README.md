# Claude Code Skills For Lily AI Workflows

These are thin Claude Code skill wrappers. Each skill lives in a folder with a `SKILL.md` file and delegates to one shared workflow in `~/.claude/lily-workflows/`.

## Skills

- `cc-progress` -> `progress-check.md`
- `cc-recap` -> `recap.md`
- `cc-next` -> `next-phase.md`
- `cc-plan` -> `create-plan.md`
- `cc-deep-plan` -> `create-plan-deep.md`
- `cc-plan-check` -> `plan-check.md`
- `cc-execute` -> `execute-plan.md`
- `cc-verify` -> `verify-work.md`
- `cc-commit` -> `git-checkpoint.md`
- `cc-quick` -> `quick.md`
- `cc-backlog` -> `backlog.md`
- `cc-debug` -> `debug.md`
- `cc-review` -> `review.md`
- `cc-ship` -> `ship.md`
- `cc-bootstrap` -> `bootstrap-project.md`
- `cc-adopt` -> `adopt-existing-project.md`

## Install

Run from the repo root:

```bash
./install-claude-code.sh
```

That copies:

- `workflows/` -> `~/.claude/lily-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`
