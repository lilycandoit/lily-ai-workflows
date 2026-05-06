# Claude Code Skills Summary

## Status

Claude Code Claude Code skill wrappers are now folder-based and match the GSD-style skill layout:

```text
~/.claude/skills/cc-progress/SKILL.md
~/.claude/skills/cc-execute/SKILL.md
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

The installer also removes obsolete flat Claude Code skill files matching:

```text
~/.claude/skills/cc-*.md
```

It does not remove non-Claude Code skills such as GSD.

## Validation

Current validation passed:

- 16 source skills found
- every skill is folder-based
- every skill has frontmatter
- every skill references an existing workflow file
- no stale flat Claude Code skill files are installed
