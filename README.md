# Lily AI Workflows

A personal AI workflow system for keeping software project context in files instead of chat history.

This repo is shared as a **reference implementation and idea archive**. It is not intended to be a polished open-source framework or a community-maintained product. If the structure helps you, copy the ideas, fork it, or build your own version with a workflow that fits you better.

## What This Is

This system gives AI coding agents a repeatable way to:

- check project progress
- move between roadmap phases
- create focused implementation plans
- optionally check plans before execution
- execute one plan at a time
- verify completed work
- write summaries for future sessions
- create local git checkpoints
- capture backlog ideas and debugging notes

The main rule is simple:

```text
Reusable workflow instructions live here.
Project-specific truth lives in each project's .planning/ folder.
```

## What This Is Not

This repo is not:

- a general-purpose project management tool
- a replacement for judgment, review, or testing
- a full clone of GSD
- a promise that every workflow fits every project
- a contribution-driven open-source project

I may keep changing it for my own daily workflow. Public visibility is mainly for sharing the approach.

## Naming And Customization

This repo uses the name **Lily AI Workflows** because it is my personal local system. The name is not part of the method.

If you adapt this repo, you can rename everything to match your own system. The reusable pattern is:

```text
workflows/                 Shared instructions
adapters/<ai>/             AI-specific wrappers or skills
templates/                 Optional project starter files
project .planning/         Project-specific source of truth
```

You do not need to use `custom-workflows`, `cc-*`, `codex-*`, or `.planning/` exactly. If you rename them, update the matching install scripts, adapter skill files, and project instruction templates consistently.

## Current Support

Implemented adapters:

- Claude Code skills: `cc-*`
- Codex skills: `codex-*`

Started but not complete:

- Gemini adapter

## Repository Structure

```text
workflows/                 Shared workflow instructions any AI can read
adapters/claude-code/      Claude Code skill wrappers and notes
adapters/codex/            Codex skill wrappers and AGENTS.md adapter
adapters/gemini/           Starter Gemini adapter
templates/                 Optional project-level starter instruction files
USER-GENERAL-GUIDE.md      Full system guide and operating model
SKILLS-SUMMARY.md          Skill adapter map and validation summary
install-claude-code.sh     Install workflows and cc-* skills locally
install-codex.sh           Install workflows and codex-* skills locally
```

## Shared Workflows

Core workflows:

- `planning-system.md` — rules and file conventions
- `progress-check.md` — inspect state and identify next action
- `recap.md` — summarize project state from files only
- `next-phase.md` — advance from completed phase to next roadmap phase
- `create-plan.md` — create one focused implementation plan
- `create-plan-deep.md` — deeper planning for risky or unclear work
- `plan-check.md` — optional plan review, persisted as `*-PLAN-CHECK.md`
- `execute-plan.md` — execute one plan safely
- `verify-work.md` — check completed work against acceptance criteria
- `write-summary.md` — write matching `*-SUMMARY.md`
- `git-checkpoint.md` — local git commits after verified work

Lifecycle and utility workflows:

- `bootstrap-project.md`
- `adopt-existing-project.md`
- `quick.md`
- `backlog.md`
- `debug.md`
- `review.md`
- `ship.md`

## Skill Shortcuts

Claude Code shortcuts use `cc-*`:

```text
cc-progress
cc-next
cc-plan
cc-plan-check
cc-execute
cc-verify
cc-commit
cc-recap
```

Codex shortcuts use `codex-*`:

```text
codex-progress
codex-next
codex-plan
codex-plan-check
codex-execute
codex-verify
codex-commit
codex-recap
```

More shortcuts exist for quick tasks, backlog, debug, review, ship, bootstrap, and adoption. See `SKILLS-SUMMARY.md`.

## Install Locally

This repo is the editable source for the workflows. It is useful for reviewing, adjusting, and sharing the workflow files, **but AI tools usually read skills from user-level runtime folders on your machine**.

Therefore, use the installer scripts to copy the current repo workflows into those local runtime folders:

- Claude Code: `workflows/` -> `~/.claude/custom-workflows/`
- Claude Code skills: `adapters/claude-code/skills/` -> `~/.claude/skills/`
- Codex: `workflows/` -> `~/.codex/custom-workflows/`
- Codex skills: `adapters/codex/skills/` -> `~/.codex/skills/`

Run `chmod +x` once if the installer is not executable yet. Run the installer itself the first time and again whenever you update workflow files in this repo.

Claude Code:

```bash
chmod +x install-claude-code.sh # once, first time only
./install-claude-code.sh        # first time and whenever workflows change
```

Codex:

```bash
chmod +x install-codex.sh # once, first time only
./install-codex.sh        # first time and whenever workflows change
```

These scripts copy shared workflows and AI-specific skill wrappers into local runtime folders. They do not install project `.planning/` files. The files in `templates/` are optional references; `cc-bootstrap` and `codex-bootstrap` can create project files directly from the bootstrap workflow without copying templates.

## Project Memory

Each project should keep its own memory inside that project:

```text
CLAUDE.md or AGENTS.md
.planning/README.md
.planning/PROJECT.md
.planning/ROADMAP.md
.planning/STATE.md
.planning/DECISIONS.md
.planning/REQUIREMENTS.md
.planning/phases/
```

Project-specific context does not belong in this workflow repo.

## What To Customize

If you build your own version, review these areas first:

- System name: rename `Lily AI Workflows` and any `custom-workflows` runtime folder references.
- Workflow content: edit files in `workflows/` to match your planning style, verification habits, and git policy.
- Skill names: rename `cc-*` or `codex-*` wrappers if you prefer different shortcuts.
- Install paths: update `install-claude-code.sh` and `install-codex.sh` if your AI tools read from different folders.
- Project memory shape: keep `.planning/` or choose another folder, then update workflows and templates consistently.
- Templates: customize `templates/CLAUDE.md`, `templates/AGENTS.md`, `templates/GEMINI.md`, and `templates/planning/README.md` for your own projects.
- Public/private stance: add a license only if you want others to reuse the files under formal terms.

## Public Sharing Note

This repository is public so others can inspect the idea and adapt it. I am not positioning it as a stable package, formal standard, or community roadmap. The best use of this repo is to understand the pattern, then customize your own workflow.

## License And Reuse

No formal open-source license has been selected yet. Treat this repo as reference material unless a `LICENSE` file is added later. The ideas and structure are shared for learning; the files themselves are my personal working copy and may change without notice.
