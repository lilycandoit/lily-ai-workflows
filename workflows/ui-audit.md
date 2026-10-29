# UI Audit Workflow

Goal: assess a screen, page, or component for UI quality, clarity, consistency, and accessibility.

Use this when you want a review before a redesign, before a polish pass, or when the current UI feels weak but the fix is not yet obvious.

## Read

Read:

1. the screen or component under review
2. its surrounding layout/context
3. any relevant design system, style tokens, or patterns
4. any current screenshots, product notes, or acceptance criteria

Look at:

- visual hierarchy
- spacing consistency
- typography choices
- contrast and readability
- button and form clarity
- states such as hover, focus, disabled, and error
- mobile or responsive behavior
- clutter, density, and alignment

## Rules

- Be specific and actionable.
- Distinguish between must-fix, should-fix, and optional improvements.
- Prefer critique grounded in user experience, not preference alone.
- Flag accessibility issues clearly.
- If the UI only needs minor cleanup, recommend `ui-polish.md`.
- If the problem is structural or visual-direction related, recommend `ui-redesign.md`.

## Execute

1. identify what is working and what is not
2. assess visual hierarchy, spacing, consistency, readability, and accessibility
3. group issues by priority: critical, important, optional
4. explain why each issue exists and the likely user effect
5. suggest the minimum next step to improve the screen

## Output

Return:

- screen or component reviewed
- what is working well
- top issues in priority order
- recommended fix path
- whether this should be a polish pass or a redesign pass
