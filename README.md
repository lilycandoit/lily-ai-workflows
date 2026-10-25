# Lily AI Workflows

A small workflow system for keeping software project context in files instead of chat history.

This repo is a personal reference for how I structure AI-assisted work. The goal is simple:

- keep project memory in files
- keep iteration small and explicit
- let AI tools follow the same workflow every time
- reduce the need to rebuild context from chat history

## The core idea

The system has three layers:

1. Shared workflow files live in this repo under `workflows/`
2. AI-specific skill shortcuts live in `adapters/`
3. Project-specific truth lives in each project’s `.planning/` folder

In practical terms:

- the repo is the source of the process
- your local VS Code AI tool reads the installed runtime copy
- each project keeps its own state, roadmap, phases, and plan outputs in `.planning/`

## How this works in VS Code

The AI agent does not usually read the repo files directly while executing work. It reads the installed copies in your local runtime folders.

That is why the install scripts matter:

- Claude Code: `~/.claude/custom-workflows/` and `~/.claude/skills/`
- Codex: `~/.codex/custom-workflows/` and `~/.codex/skills/`

This repo is where you edit and improve the workflow. The install scripts copy those changes into the folders your local AI tools actually read.

## Quick start

From this repo root:

```bash
chmod +x install-claude-code.sh
./install-claude-code.sh
```

or

```bash
chmod +x install-codex.sh
./install-codex.sh
```

Then start using the installed skill shortcuts in your AI tool.

## Install and runtime policy

Use the repo as the editable source of truth, then install it locally so the AI can use it in VS Code.

### Claude Code

```bash
./install-claude-code.sh
```

This copies:

- `workflows/` -> `~/.claude/custom-workflows/`
- `adapters/claude-code/skills/` -> `~/.claude/skills/`

### Codex

```bash
./install-codex.sh
```

This copies:

- `workflows/` -> `~/.codex/custom-workflows/`
- `adapters/codex/skills/` -> `~/.codex/skills/`

### Important rule

Whenever you update the workflow repo, rerun the install script so your local AI tool picks up the latest workflow files.

## Shortcut and workflow map

This is the main map for daily use.

| Claude Code skill | Codex skill        | Workflow / purpose                                                                      |
| ----------------- | ------------------ | --------------------------------------------------------------------------------------- |
| `cc-bootstrap`    | `codex-bootstrap`  | `workflows/bootstrap-project.md` — create a new project structure                       |
| `cc-adopt`        | `codex-adopt`      | `workflows/adopt-existing-project.md` — bring an existing repo into the planning system |
| `cc-progress`     | `codex-progress`   | `workflows/progress-check.md` — check current state and identify the next action        |
| `cc-next`         | `codex-next`       | `workflows/next-phase.md` — move from a completed phase to the next roadmap phase       |
| `cc-plan`         | `codex-plan`       | `workflows/create-plan.md` — create one focused implementation plan                     |
| `cc-plan-check`   | `codex-plan-check` | `workflows/plan-check.md` — review a plan before executing it                           |
| `cc-execute`      | `codex-execute`    | `workflows/execute-plan.md` — execute one plan safely                                   |
| `cc-verify`       | `codex-verify`     | `workflows/verify-work.md` — validate outcomes against acceptance criteria              |
| `cc-commit`       | `codex-commit`     | `workflows/git-checkpoint.md` — create a local git checkpoint after verified work       |
| `cc-recap`        | `codex-recap`      | `workflows/recap.md` — summarize project state from files only                          |
| `cc-consult`      | `codex-consult`    | `workflows/consult.md` — strategic consultation before planning or implementation       |
| `cc-test-plan`    | `codex-test-plan`  | `workflows/test-plan.md` — decide testing strategy before or during implementation      |
| `cc-add-tests`    | `codex-add-tests`  | `workflows/add-tests.md` — add missing automated tests                                  |
| `cc-uat`          | `codex-uat`        | `workflows/uat.md` — manual acceptance testing checklist and results                    |
| `cc-backlog`      | `codex-backlog`    | `workflows/backlog.md` — capture ideas, bugs, seeds, and future work                    |
| `cc-debug`        | `codex-debug`      | `workflows/debug.md` — structured bug investigation                                     |
| `cc-review`       | `codex-review`     | `workflows/review.md` — code or planning review                                         |
| `cc-ship`         | `codex-ship`       | `workflows/ship.md` — push, PR, or release workflow                                     |
| `cc-quick`        | `codex-quick`      | `workflows/quick.md` — small safe changes without full planning                         |

## Workflow categories

### Core daily workflows

- `planning-system.md` — the rules and file conventions
- `progress-check.md` — inspect state and find the next step
- `next-phase.md` — move to the next roadmap phase
- `create-plan.md` — create a focused implementation plan
- `create-plan-deep.md` — deeper planning for unclear or risky work
- `execute-plan.md` — execute one plan
- `verify-work.md` — check verification against acceptance criteria
- `write-summary.md` — record the completed work summary
- `git-checkpoint.md` — commit only after verified work

### Lifecycle workflows

- `bootstrap-project.md` — start a new project
- `adopt-existing-project.md` — adopt an existing project into the system

### Utility workflows

- `backlog.md`
- `debug.md`
- `review.md`
- `ship.md`
- `consult.md`
- `uat.md`

## Project memory layout

Each project should keep its own durable context inside `.planning/`.

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

Use this folder naming pattern:

```text
.planning/phases/phase-{number}-{short-summary}/
```

Examples:

```text
.planning/phases/phase-1-foundation/
.planning/phases/phase-2-authentication-user-roles/
.planning/phases/phase-3-billing-subscriptions/
```

The short summary should be a brief, lowercase slug that tells you what the feature or fix is about at a glance.

## Project instruction files

The repo includes optional starter templates in `templates/`:

- `templates/CLAUDE.md`
- `templates/AGENTS.md`
- `templates/GEMINI.md`
- `templates/planning/README.md`

These are helpful when creating a new project or adopting an existing one.

## Customize this system

You do not need to keep the exact names. You can rename the following if it fits your setup:

- workflow folder names
- runtime folder names
- AI skill prefixes like `cc-*` or `codex-*`
- project memory folder name such as `.planning/`

The important thing is consistency between:

- the install scripts
- the AI skill wrappers
- the project instruction files
- the project memory structure

## Notes

This repo is a personal reference and working system, not a formal product or a polished open-source framework. It is meant to be copied, adapted, and customized.

The ideas are more important than the exact naming. If a workflow works better for you, change it and keep using what is useful.

## License

No formal open-source license has been selected yet. Treat this repo as reference material unless a `LICENSE` file is added later.
