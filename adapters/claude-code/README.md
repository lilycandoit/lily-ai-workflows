# Claude Code Skills For Lily AI Workflows

These are lightweight skill wrappers that point Claude Code to the corresponding Lily workflow files.

Each skill corresponds to one workflow file and provides a shortcut to commonly-used operations.

## Skills

### Daily Workflows

**Core workflow shortcuts:**

- `lily-progress` → progress check
- `lily-recap` → project summary
- `lily-next` → move to next phase
- `lily-plan` → create focused plan
- `lily-deep-plan` → create deep plan for risky work
- `lily-plan-check` → review plan before execution
- `lily-execute` → execute one plan
- `lily-verify` → verify completed work
- `lily-commit` → create local git checkpoint

### Utility Workflows

**Supporting tools:**

- `lily-quick` → small changes without full planning
- `lily-backlog` → capture ideas and bugs
- `lily-debug` → structured bug investigation
- `lily-review` → code or planning review
- `lily-ship` → publish work (push, PR, release)

### Project Lifecycle

**Project setup and adoption:**

- `lily-bootstrap` → start new project
- `lily-adopt` → bring existing project into system

## Installation

Copy this folder to Claude Code's skills directory:

```bash
cp -r ~/Build/lily-ai-workflows/adapters/claude-code/skills ~/.claude/skills/lily-workflows
```

Or manually copy individual `lily-*.md` files to `~/.claude/skills/`.

## Usage

In Claude Code, invoke a skill by name:

```
lily-progress
```

Each skill will:

1. Read the corresponding `*.md` from `~/.claude/lily-workflows/`
2. Guide you through the workflow step-by-step
3. Return structured output

## How Skills Work

Each skill file contains:

- **Workflow reference** — pointer to the actual workflow file
- **Purpose** — what this skill does
- **When to use** — when to invoke this skill
- **Typical flow** — high-level steps to follow
- **Output** — what you'll get back

The skill acts as a shortcut. The real work happens in the workflow files, which are shared across all AI tools.

## File Structure

```
adapters/claude-code/skills/
├── README.md (this file)
├── lily-progress.md
├── lily-recap.md
├── lily-next.md
├── lily-plan.md
├── lily-deep-plan.md
├── lily-plan-check.md
├── lily-execute.md
├── lily-verify.md
├── lily-commit.md
├── lily-quick.md
├── lily-backlog.md
├── lily-debug.md
├── lily-review.md
├── lily-ship.md
├── lily-bootstrap.md
└── lily-adopt.md
```

## Daily Workflow

Typical project workflow using skills:

1. `lily-progress` — check current status
2. `lily-next` — move to next phase if ready
3. `lily-plan` — create or `lily-deep-plan` for risky work
4. `lily-plan-check` — review before executing
5. `lily-execute` — implement the plan
6. `lily-verify` — verify work meets acceptance criteria
7. `lily-commit` — save locally in git
8. `lily-recap` — summarize for next session

Use `lily-quick`, `lily-debug`, `lily-backlog` as needed for side tasks.

Only use `lily-ship` when explicitly asked to push/publish.

## Relationship to Workflows

These skills are **thin wrappers** around workflow files in `~/.claude/lily-workflows/`.

- Skills live in: `~/.claude/skills/`
- Workflows live in: `~/.claude/lily-workflows/`

When you invoke a skill, Claude Code reads the workflow file and follows it step-by-step.

Skills are for Claude Code convenience. Other AI tools (Codex, Gemini) use their own adapters and can read workflows directly.
