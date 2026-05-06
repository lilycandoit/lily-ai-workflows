# Claude Code Skills Summary

## Status

Claude Code Lily skill wrappers are now folder-based and match the GSD-style skill layout:

```text
~/.claude/skills/lily-progress/SKILL.md
~/.claude/skills/lily-execute/SKILL.md
...
```

Each source skill lives in:

```text
adapters/claude-code/skills/<skill-name>/SKILL.md
```

Each installed runtime skill lives in:

```text
~/.claude/skills/<skill-name>/SKILL.md
```

## Created Skills

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

## Skill Contract

Each `SKILL.md` includes:

- YAML frontmatter with `name`, `description`, optional `argument-hint`, and `allowed-tools`
- `<objective>` explaining the shortcut's purpose
- `<execution_context>` pointing to one file in `~/.claude/lily-workflows/`
- `<context>` passing `$ARGUMENTS`
- `<process>` instructing Claude Code to execute the workflow end-to-end

## Install

Run from this repo:

```bash
./install-claude-code.sh
```

The installer copies:

- `workflows/` -> `~/.claude/lily-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`

The installer also removes obsolete flat Lily skill files matching:

```text
~/.claude/skills/lily-*.md
```

It does not remove non-Lily skills such as GSD.

## Validation

Current validation passed:

- 16 source skills found
- every skill is folder-based
- every skill has frontmatter
- every skill references an existing workflow file
- no stale flat Lily skill files are installed
