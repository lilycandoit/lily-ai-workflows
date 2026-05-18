# Claude Code Adapter

Claude Code uses folder-based skills. This adapter provides `cc-*` shortcuts that delegate to shared workflows installed at `~/.claude/custom-workflows/`.

## Install

Run from the repo root:

```bash
./install-claude-code.sh
```

The installer copies:

- `workflows/` -> `~/.claude/custom-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`

It removes old Lily/Claude Code shortcut aliases before reinstalling current `cc-*` skills. It does not remove unrelated skills such as GSD.

## Skill Structure

Each skill is a folder with a `SKILL.md` file:

```text
adapters/claude-code/skills/cc-progress/SKILL.md
adapters/claude-code/skills/cc-execute/SKILL.md
```

Installed runtime files use the same shape:

```text
~/.claude/skills/cc-progress/SKILL.md
~/.claude/skills/cc-execute/SKILL.md
```

## Shortcuts

- `cc-progress` -> progress check
- `cc-recap` -> project summary from files
- `cc-next` -> move to next roadmap phase
- `cc-plan` -> create focused plan
- `cc-deep-plan` -> create deeper plan for risky work
- `cc-plan-check` -> optional plan review saved as `*-PLAN-CHECK.md`
- `cc-execute` -> execute one plan
- `cc-verify` -> verify completed work
- `cc-commit` -> create local git checkpoint
- `cc-quick` -> tiny low-risk change
- `cc-backlog` -> capture ideas and bugs
- `cc-debug` -> structured bug investigation
- `cc-review` -> code or planning review
- `cc-ship` -> push, PR, or release only when explicitly requested
- `cc-bootstrap` -> start a new project
- `cc-adopt` -> adopt an existing project

## Daily Flow

```text
cc-progress -> cc-next -> cc-plan -> cc-plan-check -> cc-execute -> cc-verify -> cc-commit -> cc-recap
```

`cc-plan-check` is optional. If it is run, it writes a `*-PLAN-CHECK.md` file beside the plan. `cc-execute` reads that file when present.

## Scope

These skills are Claude Code convenience wrappers. The durable process lives in the shared workflow files. Other AI tools should use their own adapters.
