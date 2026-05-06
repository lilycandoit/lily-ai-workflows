# Recap Workflow

Goal: summarize project state from files only, so the next AI session can continue without relying on chat history.

Use this when the user asks for a recap, handoff, session summary, or current project overview.

## Read

Read, if present:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. `.planning/README.md`
3. `.planning/PROJECT.md`
4. `.planning/STATE.md`
5. `.planning/ROADMAP.md`
6. `.planning/DECISIONS.md`
7. latest 2-4 `*-SUMMARY.md` files
8. current phase `*-CONTEXT.md` and active `*-PLAN.md`, if any

Do not treat chat history as source of truth when project files answer the question.

## Analyze

Identify:

1. what the project is
2. current phase and status
3. completed plans
4. active or next plan
5. durable decisions
6. blockers, risks, or open questions
7. next recommended action

## Output

Return a concise recap with these sections:

- Project
- Current State
- Recently Completed
- Key Decisions
- Risks Or Blockers
- Next Action
- Files To Read Next

## Rules

- Be specific with file names.
- If state files disagree, call out the mismatch.
- Do not update files unless the user explicitly asks for a written handoff.
