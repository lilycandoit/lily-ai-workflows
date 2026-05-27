# Bootstrap Project Workflow

Goal: create the standard `.planning/` structure for a project.

## Create

Create:

- `.planning/README.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

When the first roadmap phase is known, create its phase folder using the installed `planning-system.md` phase folder convention:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Example:

```text
.planning/phases/phase1-foundation/
.planning/phases/phase2-authentication-user-roles/
```

Inside the first active phase folder, create `CONTEXT.md`. Create `PLAN.md` only when there is enough information for one executable plan.

Initialize `.planning/STATE.md` using the installed `planning-system.md` State File Convention. At minimum, fill in current phase folder, current phase title, current plan, status, resume file, last updated, blockers, and next action.

## First Conversation

Ask or infer:

1. What is the product?
2. Who is it for?
3. What is the first milestone?
4. What are the major phases?
5. What is out of scope?
6. What technical constraints matter?

## File Purpose

- `ROADMAP.md`: ordered phases with human-readable phase names
- `STATE.md`: explicit current phase folder, phase title, current plan, status, resume file, and next action
- `DECISIONS.md`: durable decisions
- `REQUIREMENTS.md`: stable requirements
- phase folders: context, plans, checks, summaries

## Rule

Bootstrap only the structure and first useful phase context. Do not over-plan the whole project too early.
