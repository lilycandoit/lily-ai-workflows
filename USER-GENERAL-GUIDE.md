# Lily AI Workflow System

## Purpose

This system helps AI continue software projects across sessions by storing project context in files instead of relying on chat history.

The goal is not to copy GSD completely. The goal is to keep the useful parts:

- file-based project memory
- clear progress checks
- focused plans
- verification before moving on
- local git checkpoints
- reusable AI instructions
- lightweight skill shortcuts

## Architecture

- `workflows/` is the shared workflow layer.
- `adapters/` contains AI-specific wrappers.
- `templates/` contains project-level starter files.
- Project `.planning/` folders contain project-specific truth.

## File Layers

### Shared User-Level Workflows

Stored in this repo under:

- `workflows/`

Installed for Claude Code to:

- `~/.claude/lily-workflows/`

These files are AI-agnostic Markdown instructions. Claude, Codex, Gemini, Cursor, or another AI can follow them if pointed at the files.

### AI-Specific Adapters

Stored under:

- `adapters/claude-code/`
- `adapters/codex/`
- `adapters/gemini/`

Claude Code skills use `SKILL.md` files. Codex and Gemini should use their own instruction format instead of Claude skill wrappers.

### Project-Level Files

Each project should contain:

- `CLAUDE.md` for Claude Code
- `AGENTS.md` for Codex, if used
- `GEMINI.md` for Gemini, if used
- `.planning/README.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

The `.planning/` folder is the project source of truth.

## Workflow Files

### Core Daily Workflows

- `planning-system.md` — overall rules and file conventions
- `progress-check.md` — inspect current state and identify next action
- `recap.md` — summarize project state from files only
- `next-phase.md` — move from completed phase to next phase
- `create-plan.md` — create one focused implementation plan
- `create-plan-deep.md` — deeper planning for risky or unclear work
- `plan-check.md` — review a plan before execution
- `execute-plan.md` — execute one plan safely
- `verify-work.md` — check completed work against acceptance criteria
- `write-summary.md` — record completed work
- `git-checkpoint.md` — create local commits after verified work

### Project Lifecycle Workflows

- `bootstrap-project.md` — start a brand new project
- `adopt-existing-project.md` — bring an existing project into the planning system

### Utility Workflows

- `quick.md` — handle tiny changes without full phase planning
- `backlog.md` — capture ideas, seeds, bugs, and future work
- `debug.md` — structured bug investigation
- `review.md` — code review mode
- `ship.md` — push, PR, or release workflow

## Skill Shortcut Map

Claude Code skill wrappers should stay small. Each skill points to one workflow file.

Planned mappings:

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

## Normal Development Flow

Typical flow:

1. Check progress.
2. Move to the next phase if the current phase is complete.
3. Create a focused plan.
4. Check the plan.
5. Execute one plan.
6. Verify the work.
7. Write or update the summary.
8. Commit locally.
9. Recap from files.

Shortcut version after skills exist:

- `lily-progress`
- `lily-next`
- `lily-plan`
- `lily-plan-check`
- `lily-execute`
- `lily-verify`
- `lily-commit`
- `lily-recap`

## New Project Flow

Use `bootstrap-project.md`.

Purpose:

- create project-level planning files
- define product intent
- identify early phases
- create the first useful plan

Expected project files:

- `CLAUDE.md`
- `.planning/README.md`
- `.planning/PROJECT.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

## Existing Project Adoption Flow

Use `adopt-existing-project.md`.

Purpose:

- inspect the repo
- document what exists
- separate facts from assumptions
- create `.planning/`
- recommend the safest next plan
- do not rewrite product code during adoption

This is for older projects where work happened through chat but context was not saved into files.

## Planning Quality

The Lily system adopts the best lightweight parts of GSD planning:

- research before planning when needed
- plan quality checks
- verification mapping before implementation
- explicit acceptance criteria
- summaries after execution

Default planning should stay lightweight.

Use deep planning only for:

- risky features
- unclear architecture
- cross-system changes
- security-sensitive work
- large phases
- work where verification is hard

## Git And GitHub Policy

Default policy:

- commit locally after verified work
- do not push unless explicitly requested
- keep reusable workflow repo separate from project repos
- keep project `.planning/` files inside each project repo

This workflow repo may be pushed to GitHub as a private repo.

Do not push the entire `~/.claude` folder. It may contain sessions, caches, telemetry, auth state, or machine-specific files.

## Runtime Install Policy

This repo is the clean source.

Claude Code runtime reads from:

- `~/.claude/lily-workflows/`
- `~/.claude/skills/`

To install shared workflows for Claude Code, copy:

- `workflows/` to `~/.claude/lily-workflows/`

To install Claude skills, copy:

- `adapters/claude-code/skills/` to `~/.claude/skills/`

Later this can be automated with an `install.sh` script.

## Adopted From GSD

Adopted ideas:

- file-based project memory
- progress routing
- phase and plan structure
- plan summaries
- local git checkpoints
- verification before moving on
- backlog and idea capture
- optional deeper planning
- explicit next-step routing

## Not Adopted From GSD Yet

Skipped for now:

- large autonomous manager
- always-on multi-agent orchestration
- workstreams
- workspace management
- graph and stats systems
- advanced settings system
- complex milestone archive system
- full forensic audit layer

Reason:

The Lily system should stay small, readable, and token-efficient.

## Current Gaps

Built so far:

- shared workflow files
- Claude Code install script
- starter adapters for Codex and Gemini
- starter project templates

Still to build next:

- Claude Code skill wrappers
- richer Codex adapter
- richer Gemini adapter
- fuller project templates for `.planning/`
- optional install/sync commands for each adapter

The next priority is Claude Code skills, because those provide the daily shortcut layer over the workflow files.
