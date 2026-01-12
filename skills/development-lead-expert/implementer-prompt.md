# Implementer Subagent Prompt Template

Use this template when dispatching an implementer subagent for development tasks.

**Purpose:** Implement specific development tasks based on ARCHITECT requirements with strict constraints.

---

**Task tool (general-purpose) invocation:**
```
description: "Implement {task name}"
prompt: |
  You are implementing a development task based on ARCHITECT requirements.

  ## Task Goal

  {full task description and requirements}

  ## Constraint Parameters

  ### Task Goal
  {specific task goal}

  ### Allowed File Paths
  {list of allowed file paths to modify}

  ### Allowed Module Names
  {list of allowed module names to modify}

  ### Context Limits
  {scope limitation - what to handle, what NOT to touch}

  ### Input Document Reference
  {ARCHITECT.md section X content - only relevant section}

  ### Acceptance Criteria
  {specific completion standards}

  ## CRITICAL Constraint Rules

  - **MUST** only modify files in Allowed File Paths list
  - **MUST** only modify modules in Allowed Module Names list
  - **MUST NOT** exceed Context Limits scope
  - **MUST** use Glob tool to verify file existence before modifying
  - **After completion** MUST report actual modified files

  ## Tech Stack (from ARCHITECT.md Section 8)

  {tech stack details if applicable}

  ## Implementation Requirements

  1. **Tech Stack Confirmation**
     - Read package.json to confirm framework and versions
     - Search project for existing code patterns (Grep existing components)
     - Follow project existing patterns, don't guess

  2. **Code Pattern Search**
     - Before writing code, MUST search project for similar implementations
     - Use Grep to find existing patterns
     - Follow project conventions for structure, imports, naming

  3. **Implementation**
     - Implement per tech stack specifications
     - Follow project code style
     - Include error handling, loading states
     - Add necessary comments

  4. **Self-Check**
     - Verify implementation meets acceptance criteria
     - Check if modified files are within allowed list
     - Ensure no constraint violations

  ## Completion Report

  After implementation, provide:
  - List of files created/modified
  - Summary of implementation
  - Any deviations from requirements (with justification)
  - Known issues or limitations
  - Verification performed

  ## Red Flags - Stop and Ask

  - Don't confirm tech stack before coding
  - Don't search for existing code patterns
  - Modify files outside allowed list
  - Exceed context scope
  - Skip acceptance criteria
```

---

## Example: Frontend Task Implementation

```
Task(tool="general-purpose",
  description="Implement login page",
  prompt="""
  You are implementing a login page based on ARCHITECT requirements.

  ## Task Goal

  Implement user login page with form validation and API integration.

  ## Constraint Parameters

  ### Task Goal
  Implement login page with email/password form, validation, submit to API

  ### Allowed File Paths
  - src/pages/LoginPage.vue
  - src/components/LoginForm.vue

  ### Allowed Module Names
  - HomePage
  - UserProfile

  ### Context Limits
  Only handle login form functionality. DO NOT implement:
  - Permission verification
  - User registration
  - Password reset

  ### Input Document Reference
  ARCHITECT.md Section 6.1: User Login Flow

  ### Acceptance Criteria
  - Email format validation
  - Password length validation (min 8 chars)
  - Submit to /api/auth/login endpoint
  - Display error messages on failure
  - Redirect to HomePage on success

  ## Tech Stack

  - Framework: Vue 3 + Composition API
  - State: Pinia
  - UI: Element Plus
  - Build: Vite

  ## Implementation Requirements

  1. Read package.json to confirm Vue 3
  2. Search for existing form components (Grep "Form", "*.vue")
  3. Follow Element Plus form patterns
  4. Implement with validation, error handling, loading states

  ## Completion Report

  Report modified files and implementation summary.
  """
)
```

## Key Points

- **Constraints are mandatory** - subagent MUST NOT modify files outside allowed list
- **Context limits are strict** - only handle specified functionality, don't add extra features
- **Tech stack confirmation first** - don't guess, read package.json
- **Code pattern search required** - follow existing project patterns
- **Completion report mandatory** - list all modified files
