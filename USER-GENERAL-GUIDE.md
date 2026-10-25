# Lily AI Workflow System

A lightweight system for keeping project work in files instead of chat history.

This repo is a personal reference for AI-assisted software work. The goal is to make project memory durable, easy to inspect, and easy to resume across sessions.

## Core idea

The system has three layers:

1. shared workflow files in `workflows/`
2. AI-specific shortcut wrappers in `adapters/`
3. project-specific memory in `.planning/`

The main rule is simple:

```text
Reusable workflow instructions live in this repo.
Project truth lives in each project's .planning/ folder.
```

## Install locally

This repo is the editable source of truth. The AI tools usually read the installed runtime copies, not the repo files directly.

### Claude Code

```bash
chmod +x install-claude-code.sh    # run this once on first setup
./install-claude-code.sh
```

This copies:

- `workflows/` -> `~/.claude/custom-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`

### Codex

```bash
chmod +x install-codex.sh    # run this once on first setup
./install-codex.sh
```

This copies:

- `workflows/` -> `~/.codex/custom-workflows/`
- `adapters/codex/skills/` -> `~/.codex/skills/`

After the install, use the skill shortcuts inside your AI tool.

When you update the workflow repo, rerun the install script so the local AI tool picks up the latest version.

## Shortcut and workflow map

| Claude Code skill | Codex skill        | Workflow / purpose                                                                      |
| ----------------- | ------------------ | --------------------------------------------------------------------------------------- |
| `cc-bootstrap`    | `codex-bootstrap`  | `workflows/bootstrap-project.md` — create a new project structure                       |
| `cc-adopt`        | `codex-adopt`      | `workflows/adopt-existing-project.md` — bring an existing repo into the planning system |
| `cc-progress`     | `codex-progress`   | `workflows/progress-check.md` — inspect current project state                           |
| `cc-next`         | `codex-next`       | `workflows/next-phase.md` — move to the next roadmap phase                              |
| `cc-plan`         | `codex-plan`       | `workflows/create-plan.md` — create a focused plan                                      |
| `cc-plan-check`   | `codex-plan-check` | `workflows/plan-check.md` — review a plan before execution                              |
| `cc-execute`      | `codex-execute`    | `workflows/execute-plan.md` — execute one plan safely                                   |
| `cc-verify`       | `codex-verify`     | `workflows/verify-work.md` — verify completion against criteria                         |
| `cc-commit`       | `codex-commit`     | `workflows/git-checkpoint.md` — local git checkpoint after verified work                |
| `cc-recap`        | `codex-recap`      | `workflows/recap.md` — summarize from files only                                        |
| `cc-consult`      | `codex-consult`    | `workflows/consult.md` — strategic consultation before work                             |
| `cc-test-plan`    | `codex-test-plan`  | `workflows/test-plan.md` — decide testing strategy                                      |
| `cc-add-tests`    | `codex-add-tests`  | `workflows/add-tests.md` — add missing automated tests                                  |
| `cc-uat`          | `codex-uat`        | `workflows/uat.md` — manual acceptance testing checklist                                |
| `cc-backlog`      | `codex-backlog`    | `workflows/backlog.md` — capture future ideas or bugs                                   |
| `cc-debug`        | `codex-debug`      | `workflows/debug.md` — structured bug investigation                                     |
| `cc-review`       | `codex-review`     | `workflows/review.md` — review code or plan quality                                     |
| `cc-ship`         | `codex-ship`       | `workflows/ship.md` — publish, PR, or release only when asked                           |
| `cc-quick`        | `codex-quick`      | `workflows/quick.md` — tiny safe fixes without full planning                            |

## Project memory layout

Each project keeps its own durable context in `.planning/`.

```text
CLAUDE.md or AGENTS.md
.planning/
  README.md
  ROADMAP.md
  STATE.md
  DECISIONS.md
  REQUIREMENTS.md
  phases/
    phase-1-foundation/
      CONTEXT.md
      PLAN.md
      SUMMARY.md
    phase-2-authentication-user-roles/
      CONTEXT.md
      PLAN-01.md
      SUMMARY-01.md
```

Preferred phase folder naming:

```text
.planning/phases/phase-{number}-{short-summary}/
```

Examples:

```text
.planning/phases/phase-1-foundation/
.planning/phases/phase-2-authentication-user-roles/
.planning/phases/phase-3-billing-subscriptions/
```

The summary part should be a short, lowercase slug that makes the feature or fix recognizable at a glance.

## Project instruction files

The templates in `templates/` are optional, but useful when starting a project or adopting an existing one.

- `templates/CLAUDE.md`
- `templates/AGENTS.md`
- `templates/GEMINI.md`
- `templates/planning/README.md`

These project instruction files tell the AI where the source of truth is and which shortcuts to use.

## Reuse and customization

This repo is meant to be adapted, not treated as a rigid standard.

You can rename:

- the workflow folder names
- the runtime folders
- the skill prefixes like `cc-*` and `codex-*`
- the project memory folder if needed

The important thing is consistency across:

- install scripts
- skill wrapper files
- project instruction files
- `.planning/` structure

## Public notes

This repo is public as a reference and idea archive. It is not a polished community product, and there is no formal promise of compatibility or release stability.

The value is in the pattern: durable project memory, small plans, explicit progress, and repeatable AI execution.

## License

No formal open-source license has been selected yet. Treat this repo as reference material unless a `LICENSE` file is added later.
