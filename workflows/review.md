# Review Workflow

Goal: review code or planning artifacts for bugs, regressions, missing tests, and risks.

Use this when the user asks for review, code review, plan review, or risk review.

## Read

Read:

1. relevant diff or files
2. related plan or requirements
3. tests and verification notes, if present
4. project decisions that constrain the work

## Review Stance

Prioritize:

1. correctness bugs
2. security or data loss risks
3. behavioral regressions
4. missing verification
5. maintainability issues with concrete impact

## Output

Lead with findings, ordered by severity.

For each finding, include:

- severity
- file and line or section reference
- problem
- impact
- suggested fix

Then include:

- open questions
- test gaps
- brief summary

## Rules

- If there are no findings, say so clearly.
- Do not rewrite code unless the user asks for fixes.
- Avoid style-only comments unless they affect clarity or behavior.
