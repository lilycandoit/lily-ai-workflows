# Git Checkpoint Workflow

Goal: create small, local git commits at useful checkpoints without pushing to a remote.

Use this workflow after a focused unit of work is complete, verified, summarized, and ready to preserve in git history.

## Core Rule

Commit locally only.

Do not push unless the user explicitly asks.

## When To Commit

Create a commit after:

1. completing one implementation plan
2. writing or updating the matching summary file
3. updating `.planning/STATE.md`
4. updating `.planning/DECISIONS.md` if durable decisions changed
5. running available verification
6. checking the diff

Do not commit half-finished work unless the user explicitly asks for a WIP commit.

## Before Commit

Inspect:

1. `git status --short`
2. `git diff`
3. `git diff --staged`

Run relevant verification when available:

- tests
- lint
- typecheck
- build
- manual browser/app checks

If verification cannot be run, record that clearly in the final response and in the relevant summary file.

## What To Commit

Prefer one atomic commit per completed plan.

Include files directly related to the completed unit of work:

- source files changed for the plan
- matching summary file
- `.planning/STATE.md`
- `.planning/DECISIONS.md` only if durable decisions changed
- `.planning/ROADMAP.md` only if progress, phase status, or scope changed
- project docs only if the completed work changed documented behavior

Do not include unrelated user changes.

If unrelated changes exist, leave them unstaged and mention them.

## Commit Message

Use a concise conventional commit message.

Preferred format for plan execution:

    feat({plan-id}): {short outcome}

Examples:

    feat(01-01): add MV3 extension foundation
    feat(01-02): add options page CRUD
    fix(02-03): handle empty prompt results
    docs(phase1-foundation): summarize options page CRUD
    chore(planning): adopt Lily workflow

Use:

- `feat` for new behavior
- `fix` for bug fixes
- `docs` for documentation-only changes
- `test` for test-only changes
- `refactor` for behavior-preserving code restructuring
- `chore` for tooling, config, or planning maintenance

## Commit Steps

1. Review `git status --short`.
2. Review `git diff`.
3. Stage only relevant files.
4. Review `git diff --staged`.
5. Commit with a concise message.
6. Confirm the working tree state after commit.

## Push Policy

Never run `git push` during this workflow unless the user explicitly asks.

If the user asks to publish, push, create a PR, or ship, use a separate shipping workflow.
