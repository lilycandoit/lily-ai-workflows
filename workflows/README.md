# Shared AI Workflows

Reusable AI workflows for software projects.

These files are the shared process layer. Each project still keeps its own truth in `.planning/`.

## What to use

Use the workflow files directly when reading docs, or use the installed `cc-*` / `codex-*` shortcuts in VS Code.

## Install locally

From this repo root:

```bash
chmod +x install-claude-code.sh    # once on first setup
./install-claude-code.sh
```

or

```bash
chmod +x install-codex.sh    # once on first setup
./install-codex.sh
```

This copies the shared workflows and skill wrappers into your local AI runtime folders so the agent can use them.

## Core workflow groups

### Core daily workflows

- `planning-system.md` — rules and file conventions
- `progress-check.md` — inspect current state and identify the next action
- `next-phase.md` — move from a completed phase to the next one
- `create-plan.md` — create one focused implementation plan
- `create-plan-deep.md` — deeper planning for risky or unclear work
- `execute-plan.md` — execute one plan safely
- `verify-work.md` — validate completion against acceptance criteria
- `write-summary.md` — record the completed work
- `git-checkpoint.md` — create local commits after verified work

### Lifecycle workflows

- `bootstrap-project.md` — start a brand new project
- `adopt-existing-project.md` — bring an existing project into the planning system

### Utility workflows

- `quick.md`
- `backlog.md`
- `debug.md`
- `review.md`
- `ship.md`
- `consult.md`
- `uat.md`
- `test-plan.md`
- `add-tests.md`
- `ui-audit.md`
- `ui-polish.md`
- `ui-redesign.md`

## Project memory rule

Each project should keep its own durable context in `.planning/`.

Use this phase folder convention:

```text
.planning/phases/phase-{number}-{short-summary}/
```

Examples:

```text
.planning/phases/phase-1-foundation/
.planning/phases/phase-2-authentication-user-roles/
.planning/phases/phase-3-billing-subscriptions/
```

The slug should be short, lowercase, and descriptive enough to scan at a glance.

## Project files

Each project typically contains:

- `CLAUDE.md` or `AGENTS.md`
- `.planning/README.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

Inside each phase folder, prefer simple files like `CONTEXT.md`, `PLAN.md`, `PLAN-CHECK.md`, and `SUMMARY.md`.
