# Claude Code Skills For Lily AI Workflows

These are lightweight skill wrappers that point Claude Code to the corresponding Lily workflow files.

Each skill corresponds to one workflow file and provides a shortcut to commonly-used operations.

## Skills

### Daily Workflows

**Core workflow shortcuts:**

- `cc-progress` → progress check
- `cc-recap` → project summary
- `cc-next` → move to next phase
- `cc-plan` → create focused plan
- `cc-deep-plan` → create deep plan for risky work
- `cc-plan-check` → review plan before execution
- `cc-execute` → execute one plan
- `cc-verify` → verify completed work
- `cc-commit` → create local git checkpoint

### Utility Workflows

**Supporting tools:**

- `cc-quick` → small changes without full planning
- `cc-backlog` → capture ideas and bugs
- `cc-debug` → structured bug investigation
- `cc-review` → code or planning review
- `cc-ship` → publish work (push, PR, release)

### Project Lifecycle

**Project setup and adoption:**

- `cc-bootstrap` → start new project
- `cc-adopt` → bring existing project into system

## Installation

Copy this folder to Claude Code's skills directory:

```bash
cp -r ~/Build/lily-ai-workflows/adapters/claude-code/skills ~/.claude/skills/lily-workflows
```

Or manually copy individual `cc-*.md` files to `~/.claude/skills/`.

## Usage

In Claude Code, invoke a skill by name:

```
cc-progress
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
├── cc-progress.md
├── cc-recap.md
├── cc-next.md
├── cc-plan.md
├── cc-deep-plan.md
├── cc-plan-check.md
├── cc-execute.md
├── cc-verify.md
├── cc-commit.md
├── cc-quick.md
├── cc-backlog.md
├── cc-debug.md
├── cc-review.md
├── cc-ship.md
├── cc-bootstrap.md
└── cc-adopt.md
```

## Daily Workflow

Typical project workflow using skills:

1. `cc-progress` — check current status
2. `cc-next` — move to next phase if ready
3. `cc-plan` — create or `cc-deep-plan` for risky work
4. `cc-plan-check` — review before executing
5. `cc-execute` — implement the plan
6. `cc-verify` — verify work meets acceptance criteria
7. `cc-commit` — save locally in git
8. `cc-recap` — summarize for next session

Use `cc-quick`, `cc-debug`, `cc-backlog` as needed for side tasks.

Only use `cc-ship` when explicitly asked to push/publish.

## Relationship to Workflows

These skills are **thin wrappers** around workflow files in `~/.claude/lily-workflows/`.

- Skills live in: `~/.claude/skills/`
- Workflows live in: `~/.claude/lily-workflows/`

When you invoke a skill, Claude Code reads the workflow file and follows it step-by-step.

Skills are for Claude Code convenience. Other AI tools (Codex, Gemini) use their own adapters and can read workflows directly.
