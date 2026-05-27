# Consult Workflow

Goal: help the user think clearly about a project, feature, product direction, architecture choice, codebase direction, or vague idea before creating a plan or making implementation decisions.

Default behavior: answer in chat only. Do not create or edit `.planning/` files unless the user explicitly asks to save the consultation outcome.

Use this when the user wants strategic advice, mentorship, tradeoff analysis, option mapping, or help clarifying what decision they are really making.

## Read

Read project context only when useful for the decision. Prefer the smallest useful context set.

Useful files may include:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, `GEMINI.md`, or equivalent
2. `.planning/PROJECT.md`
3. `.planning/ROADMAP.md`
4. `.planning/STATE.md`
5. `.planning/REQUIREMENTS.md`
6. `.planning/DECISIONS.md`
7. relevant phase `CONTEXT.md`, plan, or summary files
8. relevant source files when the question depends on current implementation reality

Do not over-read the repository for a broad product or strategy question. Read code only when it materially changes the advice.

## Consult Process

### 1. Clarify The Real Question

Restate what the user is actually trying to decide in clear, simple words.

If the user's question is vague, infer the most likely decision and label it as an interpretation.

### 2. Map Realistic Options

Give 3-5 concrete directions the user could take.

Include:

- the straightforward option
- the conservative option
- the higher-upside option
- one creative or non-obvious option when useful

Avoid filler options that are obviously bad.

### 3. Analyze Each Option

For each option, explain:

- what it gives the user
- what it costs in effort, time, complexity, risk, or skill needed
- what the user might lose or give up
- who or what situation this option fits best

Be practical and specific. Tie advice back to the user's project state when available.

### 4. Identify Missing Information

List the information that would materially change the decision.

Focus on questions such as:

- user needs or audience uncertainty
- technical unknowns
- maintenance cost
- time or energy constraints
- dependency, platform, or business risk
- evidence that would validate or invalidate the idea

### 5. Give A Direct Recommendation

State what you would do and why.

Be direct. Do not hide behind "it depends" unless the missing information truly blocks a recommendation. If recommending a staged approach, name the first step.

## Output Format

Use this structure:

```md
## Real Decision

In simple terms, you are deciding whether to ...

## Options

### Option 1: {name}

- Gives you:
- Costs you:
- Tradeoff:
- Best fit:

### Option 2: {name}

...

## Missing Information

- ...

## Recommendation

I would ... because ...

## Suggested Next Action

- Keep discussing this decision, or
- Save the decision to `.planning/DECISIONS.md`, or
- Add an idea to `.planning/BACKLOG.md`, or
- Create a plan with `cc-plan` / `codex-plan`, or
- Run deeper planning with `cc-deep-plan` / `codex-deep-plan`.
```

## Save Policy

Do not write files by default.

Only save output when the user explicitly asks. If asked to save:

- durable product or technical choices go to `.planning/DECISIONS.md`
- future ideas go to `.planning/BACKLOG.md`
- executable work should become a plan through `create-plan.md` or `create-plan-deep.md`
- brief handoff notes can go to the relevant phase `CONTEXT.md`

## Rules

- Do not implement code during consultation.
- Do not create a plan unless the user explicitly asks for planning.
- Do not use subagents by default; keep this workflow token-efficient.
- Prefer clear tradeoffs over long generic advice.
- If the decision depends on current code, inspect only the relevant files before recommending.
