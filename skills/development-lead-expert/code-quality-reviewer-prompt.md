# Code Quality Reviewer Prompt Template

Use this template when dispatching a code quality reviewer subagent.

**Purpose:** Review code quality, maintainability, and best practices after spec compliance is verified.

---

**Task tool (general-purpose) invocation:**
```
description: "Review code quality for {task name}"
prompt: |
  You are reviewing code quality for an implementation that passed spec compliance review.

  ## Implementation Context

  {Task description and what was implemented}

  ## Files Modified

  {List of files created/modified by implementer}

  ## Code Quality Assessment

  Review the implemented code for:

  **1. Code Organization & Structure**
  - Single responsibility per component/module
  - Clear file and folder structure
  - Logical code organization
  - Appropriate separation of concerns

  **2. Code Readability**
  - Clear, descriptive naming
  - Necessary comments for complex logic
  - No magic numbers or hardcoded values
  - Consistent code style and formatting

  **3. Error Handling**
  - Proper try-catch blocks for async operations
  - Error messages are user-friendly
  - Graceful degradation on failures
  - No silent failures

  **4. Performance Considerations**
  - No unnecessary re-renders or computations
  - Efficient data structures and algorithms
  - Proper lazy loading where applicable
  - No memory leaks (unsubscribed events, etc.)

  **5. Tech Stack Best Practices**
  - Follows framework conventions (React/Vue/etc.)
  - Uses framework features appropriately
  - No deprecated APIs
  - TypeScript: proper typing, no `any` types
  - Proper component lifecycle management

  **6. Maintainability**
  - DRY principle (no code duplication)
  - Reusable abstractions where appropriate
  - Easy to modify or extend
  - Testable code structure

  **7. Security & Safety**
  - No hardcoded secrets or API keys
  - Proper input sanitization
  - No XSS vulnerabilities
  - Safe data handling

  ## Review Output Format

  Report:

  **Strengths:** (2-3 positive points)
  - [What was done well]

  **Issues:** (categorized by severity)

  **Critical (must fix):**
  - [Issue description with file:line]
  - Impact and why critical

  **Important (should fix):**
  - [Issue description with file:line]
  - Impact and why important

  **Suggestions (nice to have):**
  - [Improvement suggestion]
  - Why this would be better

  **Decision:** Approved / Needs Revision

  If "Needs Revision", implementer (same subagent) must fix issues and resubmit for review.
```

---

## Example: Code Quality Review

```
Task(tool="general-purpose",
  description="Review code quality for login page",
  prompt="""
  You are reviewing code quality for login page implementation.

  ## Implementation Context

  Login page with form validation and API integration.

  ## Files Modified

  - src/pages/LoginPage.vue
  - src/components/LoginForm.vue

  ## Code Quality Assessment

  Review these files for:
  1. Code organization
  2. Readability
  3. Error handling
  4. Performance
  5. Vue 3 best practices
  6. Maintainability
  7. Security

  Report with strengths, issues (Critical/Important/Suggestions), and approval decision.
  """
)
```

## Key Points

- **Only after spec compliance approved** - don't review quality if spec issues exist
- **Categorize issues by severity** - Critical/Important/Suggestions
- **Specific file:line references** - don't be vague
- **Actionable feedback** - explain why it's an issue and how to fix
- **Binary decision** - Approved or Needs Revision
- **Re-review required** if issues found - don't auto-approve after fixes

## Two-Stage Review Process

**Stage 1: Spec Compliance Review** (spec-reviewer-prompt.md)
- Verify requirements met
- Check constraint violations
- Identify scope creep
- Must pass before Stage 2

**Stage 2: Code Quality Review** (this file)
- Code organization and readability
- Error handling and performance
- Tech stack best practices
- Maintainability and security

**Order is critical:** Never start code quality review if spec compliance fails.
