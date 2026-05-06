# Lily AI Workflows

Reusable AI workflow instructions for project planning, execution, verification, and git checkpoints.

This repository is the clean version-controlled source for shared AI workflows and AI-specific adapters.

## Structure

- `workflows/` — shared Markdown workflows any AI can read.
- `adapters/` — AI-specific wrappers and instruction files.
- `templates/` — project-level starter files.
- `USER-GENERAL-GUIDE.md` — overview, architecture, workflow map, and future roadmap.

## Runtime Install Locations

Claude Code reads installed files from:

- `~/.claude/lily-workflows/`
- `~/.claude/skills/`

This repo stores the clean source copy. Install/sync files from this repo into runtime locations when needed.

## Project Memory

Project-specific context does not live in this repo.

Each software project should keep its own memory in:

- `CLAUDE.md`, `AGENTS.md`, or AI-specific project instructions
- `.planning/`
