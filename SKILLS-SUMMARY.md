# Skills Summary

## Status

The workflow repo now has skill adapters for:

- Claude Code: `cc-*`
- Codex: `codex-*`

Shared workflow files stay in `workflows/`. AI-specific skills are thin wrappers that point to those shared workflows after installation.

Gemini support is not implemented yet.

## Claude Code Skills

### Source Location

```text
adapters/claude-code/skills/<skill-name>/SKILL.md
```

### Installed Location

```text
~/.claude/skills/<skill-name>/SKILL.md
```

### Runtime Workflow Location

```text
~/.claude/custom-workflows/<workflow>.md
```

### Skill Contract

Each Claude Code `SKILL.md` includes:

- YAML frontmatter with `name`, `description`, optional `argument-hint`, and `allowed-tools`
- `<objective>` explaining the shortcut's purpose
- `<execution_context>` pointing to one file in `~/.claude/custom-workflows/`
- `<context>` passing `$ARGUMENTS`
- `<process>` instructing Claude Code to execute the workflow end-to-end

### Shortcuts

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
- `cc-test-plan` -> `test-plan.md`
- `cc-add-tests` -> `add-tests.md`
- `cc-uat` -> `uat.md`
- `cc-consult` -> `consult.md`
- `cc-ship` -> `ship.md`
- `cc-bootstrap` -> `bootstrap-project.md`
- `cc-adopt` -> `adopt-existing-project.md`

### Install

```bash
./install-claude-code.sh
```

The installer copies:

- `workflows/` -> `~/.claude/custom-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`

It removes obsolete Lily/Claude Code aliases matching `lily-*`, `lily-*.md`, and `cc-*` before reinstalling current `cc-*` skills. It does not remove non-Lily skills such as GSD.

## Codex Skills

### Source Location

```text
adapters/codex/skills/<skill-name>/SKILL.md
```

### Installed Location

```text
~/.codex/skills/<skill-name>/SKILL.md
```

### Runtime Workflow Location

```text
~/.codex/custom-workflows/<workflow>.md
```

### Skill Contract

Each Codex `SKILL.md` follows Codex skill-creator guidance:

- folder name matches skill `name`
- YAML frontmatter contains only `name` and `description`
- body stays concise
- body points to one workflow in `~/.codex/custom-workflows/`
- no Claude-specific `allowed-tools`, `argument-hint`, or XML-style process tags

### Shortcuts

- `codex-progress` -> `progress-check.md`
- `codex-recap` -> `recap.md`
- `codex-next` -> `next-phase.md`
- `codex-plan` -> `create-plan.md`
- `codex-deep-plan` -> `create-plan-deep.md`
- `codex-plan-check` -> `plan-check.md`
- `codex-execute` -> `execute-plan.md`
- `codex-verify` -> `verify-work.md`
- `codex-commit` -> `git-checkpoint.md`
- `codex-quick` -> `quick.md`
- `codex-backlog` -> `backlog.md`
- `codex-debug` -> `debug.md`
- `codex-review` -> `review.md`
- `codex-test-plan` -> `test-plan.md`
- `codex-add-tests` -> `add-tests.md`
- `codex-uat` -> `uat.md`
- `codex-consult` -> `consult.md`
- `codex-ship` -> `ship.md`
- `codex-bootstrap` -> `bootstrap-project.md`
- `codex-adopt` -> `adopt-existing-project.md`

### Install

```bash
./install-codex.sh
```

The installer copies:

- `workflows/` -> `~/.codex/custom-workflows/`
- `adapters/codex/skills/` -> `~/.codex/skills/`

It removes old `codex-*` Lily workflow skills before reinstalling current versions. It does not remove Codex system skills under `.system`.

## Validation Status

Current validation passed:

- 20 Claude Code source skills
- 17 Claude Code installed skills before reinstall; 20 after running `./install-claude-code.sh`
- 20 Codex source skills
- 17 Codex installed skills before reinstall; 20 after running `./install-codex.sh`
- every skill is folder-based
- every skill references an existing workflow file
- no stale flat Claude Code Lily skill files are installed
- Codex frontmatter contains only `name` and `description`

## Next Adapter

Gemini is the next likely adapter.

Expected shape is still unknown. Inspect Gemini's local instruction or extension format before creating Gemini skill wrappers.
