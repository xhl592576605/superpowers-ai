# Spec Compliance Reviewer Prompt Template

Use this template when dispatching a spec compliance reviewer subagent.

**Purpose:** Verify implementer built what was requested (nothing more, nothing less) based on ARCHITECT constraints.

---

**Task tool (general-purpose) invocation:**
```
description: "Review spec compliance for {task name}"
prompt: |
  You are reviewing whether an implementation matches its specification and constraints.

  ## What Was Requested

  {FULL TEXT of task requirements from ARCHITECT}

  ## Constraint Parameters

  ### Allowed Files
  {list of allowed files - MUST NOT modify anything else}

  ### Allowed Modules
  {list of allowed modules - MUST NOT touch anything else}

  ### Context Limits
  {scope limitation - what was in scope, what was OUT of scope}

  ### Acceptance Criteria
  {specific completion standards}

  ## What Implementer Claims They Built

  {From implementer's completion report}

  ## CRITICAL: Do Not Trust the Report

  The implementer finished suspiciously quickly. Their report may be incomplete,
  inaccurate, or optimistic. You MUST verify everything independently.

  **DO NOT:**
  - Take their word for what they implemented
  - Trust their claims about completeness
  - Accept their interpretation of requirements

  **DO:**
  - Read the actual code they wrote
  - Compare actual implementation to requirements line by line
  - Check for missing pieces they claimed to implement
  - Look for extra features they didn't mention
  - Verify constraint compliance - did they modify ONLY allowed files?

  ## Your Job

  Read the implementation code and verify:

  **Missing requirements:**
  - Did they implement everything that was requested?
  - Are there requirements they skipped or missed?
  - Did they claim something works but didn't actually implement it?

  **Extra/unneeded work (Scope Creep):**
  - Did they build things that weren't requested?
  - Did they modify files NOT in the allowed list?
  - Did they touch modules NOT in the allowed list?
  - Did they implement features outside context limits?

  **Misunderstandings:**
  - Did they interpret requirements differently than intended?
  - Did they solve the wrong problem?
  - Did they implement the right feature but wrong way?

  **Constraint Violations:**
  - Did they modify files outside allowed file paths?
  - Did they modify modules outside allowed module names?
  - Did they exceed context limits and implement out-of-scope features?

  **Verify by reading code, not by trusting report.**

  Report:
  - ✅ Spec compliant (if everything matches after code inspection)
  - ❌ Issues found: [list specifically what's missing, extra, or violated, with file:line references]
```

---

## Example: Spec Compliance Review

```
Task(tool="general-purpose",
  description="Review spec compliance for login page",
  prompt="""
  You are reviewing whether login page implementation matches its specification.

  ## What Was Requested

  From ARCHITECT.md Section 6.1:
  - Implement login form with email/password
  - Email validation, password min 8 chars
  - Submit to /api/auth/login
  - Error display on failure
  - Redirect to HomePage on success

  ## Constraint Parameters

  ### Allowed Files
  - src/pages/LoginPage.vue
  - src/components/LoginForm.vue

  ### Allowed Modules
  - HomePage
  - UserProfile

  ### Context Limits
  ONLY login form functionality. DO NOT implement:
  - Permission verification
  - User registration
  - Password reset
  - Social login

  ### Acceptance Criteria
  - Email format validation
  - Password length validation (min 8 chars)
  - Submit to /api/auth/login endpoint
  - Display error messages on failure
  - Redirect to HomePage on success

  ## What Implementer Claims

  "Implemented login page with validation and API integration.
  Modified: src/pages/LoginPage.vue, src/components/LoginForm.vue
  All acceptance criteria met."

  ## CRITICAL: Do Not Trust the Report

  Verify by reading the actual code.

  ## Your Job

  Read src/pages/LoginPage.vue and src/components/LoginForm.vue:

  1. Check for missing requirements
  2. Check for extra features (social login? registration?)
  3. Check constraint violations:
     - Are ONLY these two files modified?
     - Did they touch permission/registration code?
  4. Verify acceptance criteria

  Report findings with file:line references.
  """
)
```

## Key Points

- **Don't trust implementer report** - verify by reading actual code
- **Check constraint violations** - file/module lists, context limits
- **Identify scope creep** - extra features not requested
- **Specific file:line references** - don't be vague
- **Binary output** - ✅ compliant or ❌ issues list
