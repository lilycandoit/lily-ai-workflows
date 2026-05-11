# Lily AI Workflow System

## Purpose

This system helps AI coding agents continue software projects across sessions by storing project context in files instead of relying on chat history.

The project is a personal workflow system. It is public as a reference and idea archive, not as a polished open-source framework. Others can copy or adapt the idea, but the repo is primarily shaped around my own daily use.

## Core Idea

```text
workflows/ = reusable instructions
adapters/ = AI-specific shortcuts
templates/ = optional starter project files
project .planning/ = project-specific truth
```

The goal is not to copy GSD completely. The goal is to keep useful patterns while staying smaller and easier to inspect:

- file-based project memory
- clear progress checks
- focused plans
- optional plan checks
- verification before moving on
- local git checkpoints
- reusable AI instructions
- lightweight skill shortcuts

## Naming And Customization

This repo uses the name **Lily AI Workflows** because it is my personal workflow system. That name is not required.

If you adapt this system, you can create your own name and your own runtime folders. For example:

```text
~/.claude/lily-workflows/     my local Claude Code workflow folder
~/.codex/lily-workflows/      my local Codex workflow folder
```

could become:

```text
~/.claude/my-workflows/
~/.codex/my-workflows/
```

The important part is consistency. If you rename the system, update:

- `README.md` and `USER-GENERAL-GUIDE.md`
- `install-claude-code.sh`
- `install-codex.sh`
- skill wrapper references in `adapters/claude-code/skills/`
- skill wrapper references in `adapters/codex/skills/`
- project templates in `templates/`
- any project instruction file that points to the workflow folder

You can also rename the shortcut prefixes. This repo uses:

- `cc-*` for Claude Code
- `codex-*` for Codex

Those names are conventions, not requirements. If you rename them, keep the skill folder name, frontmatter name, install script, and documentation aligned.

## Architecture

- `workflows/` is the shared workflow layer.
- `adapters/` contains AI-specific wrappers.
- `templates/` contains optional project-level starter files. Bootstrap workflows can create project files directly without copying these templates.
- Project `.planning/` folders contain project-specific truth.

## File Layers

### Shared User-Level Workflows

Stored in this repo under:

- `workflows/`

Installed for Claude Code to:

- `~/.claude/lily-workflows/`

Installed for Codex to:

- `~/.codex/lily-workflows/`

These files are AI-agnostic Markdown instructions. Claude Code, Codex, Gemini, Cursor, or another AI can follow them if pointed at the files.

### AI-Specific Adapters

Stored under:

- `adapters/claude-code/`
- `adapters/codex/`
- `adapters/gemini/`

Claude Code and Codex use different skill formats, so their wrappers are separate. Gemini support is only a starter adapter for now.

### Project-Level Files

Each project can contain:

- `CLAUDE.md` for Claude Code
- `AGENTS.md` for Codex
- `GEMINI.md` for Gemini, if used
- `.planning/README.md`
- `.planning/PROJECT.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

The `.planning/` folder is the project source of truth. You can rename this folder in your own system, but then all workflows, templates, and project instructions should use the new name consistently.

## Workflow Files

### Core Daily Workflows

- `planning-system.md` — overall rules and file conventions
- `progress-check.md` — inspect current state and identify next action
- `recap.md` — summarize project state from files only
- `next-phase.md` — move from completed phase to next phase
- `create-plan.md` — create one focused implementation plan
- `create-plan-deep.md` — deeper planning for risky or unclear work
- `plan-check.md` — optional plan review, saved as `*-PLAN-CHECK.md`
- `execute-plan.md` — execute one plan safely, reading `*-PLAN-CHECK.md` if present
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

## Claude Code Skill Shortcut Map

Claude Code skill wrappers live in `adapters/claude-code/skills/` and install to `~/.claude/skills/`.

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

## Codex Skill Shortcut Map

Codex skill wrappers live in `adapters/codex/skills/` and install to `~/.codex/skills/`.

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
- `codex-ship` -> `ship.md`
- `codex-bootstrap` -> `bootstrap-project.md`
- `codex-adopt` -> `adopt-existing-project.md`

## Common Workflow Patterns

There is no mandatory order. The workflows are building blocks. Choose the shortest path that matches the project state.

### Ongoing Project

Use this when `.planning/` already exists and you are continuing work:

```text
recap -> progress -> next -> plan -> execute -> verify -> commit
```

Common variations:

- Use `recap` first when returning after time away or switching AI tools.
- Use `progress` first when the current state is already familiar.
- Use `next` when the current phase is complete and the roadmap should advance.
- Use `plan-check` before execution when the plan is risky, stale, or important.
- Skip `plan-check` for small, clear plans.
- Use `commit` only after verified work.

Claude Code examples:

```text
cc-recap
cc-progress
cc-next
cc-plan
cc-plan-check
cc-execute
cc-verify
cc-commit
```

Codex examples:

```text
codex-recap
codex-progress
codex-next
codex-plan
codex-plan-check
codex-execute
codex-verify
codex-commit
```

### Brand New Project

Use `bootstrap-project.md` through `cc-bootstrap` or `codex-bootstrap`.

Purpose:

- create project-level planning files
- define product intent
- identify early phases
- create the first useful plan

Expected project files:

- project instruction file such as `CLAUDE.md` or `AGENTS.md`
- `.planning/README.md`
- `.planning/PROJECT.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

The files in `templates/` are optional references. Bootstrap can create project files directly from the workflow instructions.

### Existing Project Without Planning Files

Use `adopt-existing-project.md` through `cc-adopt` or `codex-adopt`.

Purpose:

- inspect the repo
- document what exists
- separate facts from assumptions
- create `.planning/`
- recommend the safest next plan
- do not rewrite product code during adoption

This is for older projects where work happened through chat but context was not saved into files.

### Tiny Change

Use `quick.md` through `cc-quick` or `codex-quick`.

Use this for:

- typo fixes
- small documentation updates
- simple config edits
- low-risk changes that do not need a full phase plan

Still verify the change when practical, and commit locally if the work is worth preserving.

### Bug Or Regression

Use `debug.md` through `cc-debug` or `codex-debug`.

Use this when the work needs diagnosis before edits:

- failing tests
- runtime errors
- regressions
- unclear broken behavior

### Shipping

Use `ship.md` through `cc-ship` or `codex-ship` only when explicitly ready to publish.

Default policy is local commits only. Pushing, creating PRs, tagging, or releasing should be an explicit user request.

## Planning Quality

The system adopts the best lightweight parts of GSD planning:

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
- do not push project work unless explicitly requested
- keep reusable workflow repo separate from project repos
- keep project `.planning/` files inside each project repo

This workflow repo can be public as a reference implementation. Do not publish sensitive local files, runtime caches, sessions, auth files, or private project context.

Do not push entire local runtime folders such as:

- `~/.claude/`
- `~/.codex/`

They may contain sessions, caches, telemetry, auth state, or machine-specific files.

## Runtime Install Policy

This repo is the clean source.

Claude Code runtime reads from:

- `~/.claude/lily-workflows/`
- `~/.claude/skills/`

Codex runtime reads from:

- `~/.codex/lily-workflows/`
- `~/.codex/skills/`

Install commands:

```bash
./install-claude-code.sh
./install-codex.sh
```

If you rename the workflow folder, update both the install scripts and every skill wrapper that points to the old folder.

## Public Sharing Position

This repository is public so others can inspect the idea and adapt it.

It is not intended to be a contribution-focused open-source project. I am not promising stable APIs, formal release management, compatibility guarantees, issue triage, or a public roadmap. The best use of this repo is to understand the file-based workflow pattern and build your own version if it helps.

## License And Reuse

No formal open-source license has been selected yet. Treat this repo as reference material unless a `LICENSE` file is added later. The ideas and structure are shared for learning; the files themselves are my personal working copy and may change without notice.

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

The system should stay small, readable, and token-efficient.

## Current State

Built so far:

- shared workflow files
- all 16 Claude Code skill wrappers
- Claude Code install script
- all 16 Codex skill wrappers
- Codex install script
- starter Gemini adapter
- optional starter project templates

Possible future work:

- richer Gemini adapter
- fuller optional project templates for `.planning/`
- optional install/sync commands for more AI tools
