# Implementation Plan Template

Use this template when generating implementation plans via writing-plans_byDoc skill.

**IMPORTANT:**
- This TEMPLATE is in English (for Claude to read)
- Generated OUTPUT plans should be in Chinese (for users to read)

**Document References:**
- **PRD:** `.claude/superpowers/plan/change/{feature}/PRD.md`
- **DESIGN_SPEC:** `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md`
- **ARCHITECT:** `.claude/superpowers/plan/change/{feature}/ARCHITECT.md`

---

```markdown
# [Feature Name] Implementation Plan

> **For Claude:** Use superpowers:executing-plans OR superpowers:subagent-driven-development
> **IMPORTANT:** Each step MUST follow TDD: RED (failing test) → GREEN (minimal code) → REFACTOR (improve) → COMMIT

**Goal:** [From PRD Section 1.2]
**Architecture:** [From ARCHITECT Section 1.1]
**Tech Stack:** [From ARCHITECT Section 8]
**Success Metrics:** [From PRD Section 1.2]

---

## Document Sources

| Document | Path | Key Sections |
|----------|------|--------------|
| **PRD** | `.claude/superpowers/plan/change/{feature}/PRD.md` | 1, 3, 4, 5 |
| **DESIGN_SPEC** | `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md` | 4, 5, 6, 7 |
| **ARCHITECT** | `.claude/superpowers/plan/change/{feature}/ARCHITECT.md` | 3, 6, 10, 11 |

## Module Overview

[From ARCHITECT Section 11]

| Module | Priority | Dependencies | Phase |
|--------|----------|--------------|-------|
| Module 1 | P0 | None | Phase 1 |
| Module 2 | P0 | Module 1 | Phase 1 |
| Module 3 | P1 | Module 2 | Phase 2 |

---

## Module 1: [Module Name]

**Source:** ARCHITECT Section 6.X, Section 11.4
**Dependencies:** None / [list]
**Phase:** [Phase from ARCHITECT Section 11.1]
**Tech Stack:** [From ARCHITECT Section 8]

### Module Overview

[Summary from ARCHITECT Section 6]

### Feature 1.1: [Feature Name]

**User Story:** [From PRD Section 2.2 or 3.1]
**Acceptance Criteria:** [From PRD Section 3.1 or 8]

**Files:**
- Create: `path/to/file.ext` (from ARCHITECT Section 10.2)
- Test: `tests/path/to/test.ext`

**Design Requirements:**
- Component: [From DESIGN_SPEC Section 6.X]
- Visual tokens: [From DESIGN_SPEC Section 5.X]
- States: default/hover/disabled/error/focus (DESIGN_SPEC Section 6.X)
- Accessibility: [From DESIGN_SPEC Section 7.4]

**Implementation Notes:**
- Architecture: [From ARCHITECT Section 6.X]
- Data model: [From ARCHITECT Section 4.X]
- API endpoint: [From ARCHITECT Section 5.X if applicable]

#### Step 1: RED - Write failing test

**Test file:** `tests/path/to/test.ext`

```[language]
// Test for: [behavior]
// References: PRD Section X.X, DESIGN_SPEC Section Y.Y

describe('[Feature Name]', () => {
  it('should [expected behavior]', async () => {
    // Arrange
    const input = { [field]: [value] };

    // Act
    const result = await functionName(input);

    // Assert
    expect(result).toEqual({ [field]: [expected] });
  });
});
```

**Run test and verify FAIL:**
```bash
npm test -- [test-file-pattern]
# Expected: FAIL with "function not defined" or similar
```

#### Step 2: GREEN - Write minimal implementation

**Implementation file:** `src/path/to/implementation.ext`

```[language]
// Minimal implementation to pass test
// References: ARCHITECT Section X.X

export async function functionName(input: InputType): Promise<OutputType> {
  return { [field]: [expected] };
}
```

**Run test and verify PASS:**
```bash
npm test -- [test-file-pattern]
# Expected: PASS
```

#### Step 3: REFACTOR - Improve code

**Refactoring checklist:**
- [ ] Follows naming conventions (ARCHITECT Section 10.4)
- [ ] No code duplication (DRY)
- [ ] Single responsibility
- [ ] Clear, self-documenting code
- [ ] Proper error handling

**After refactoring, run test again:**
```bash
npm test -- [test-file-pattern]
# Expected: Still PASS
```

#### Step 4: Verify integration (if applicable)

```bash
npm test -- [integration-test-pattern]
# Expected: PASS
```

#### Step 5: Manual verification (if UI component)

**Manual test steps:**
1. [Step 1]
2. [Step 2]
3. [Step 3]

**Expected behavior:** [From PRD acceptance criteria or DESIGN_SPEC Section 7]

#### Step 6: Commit

```bash
git add files/changed
git commit -m "feat([module]): [brief description]

- Implements [feature]
- Tests for [behavior]
- References: PRD Section X.X, DESIGN_SPEC Section Y.Y, ARCHITECT Section Z.Z
"

# Verify commit created
git log -1 --oneline
```

**Verification after commit:**
```bash
npm test      # All tests pass
npm run lint  # No linting errors
```

---

### Feature 1.2: [Next Feature]
...

---

## Module 2: [Module Name]
...

---

## Gaps and Assumptions

### Requires User Confirmation:

1. **[Gap description]**
   - Found in: PRD Section X.X vs ARCHITECT Section Y.Y
   - Impact: [what breaks without clarification]
   - Options:
     - A: [Option A description]
     - B: [Option B description]
   - Recommended: A

### Assumptions Made:

1. **[Assumption]**
   - Source: [which document was unclear]
   - Assumed value: [what we're assuming]
   - Validation method: [how to confirm]
   - Risk if wrong: [consequence]

### Inconsistencies Found:

1. **[Description]**
   - Location: PRD Section X.X says X, ARCHITECT Section Y.Y says Y
   - Impact: [what this affects]
   - Resolution: [how to fix]

---

## Document Reference Mapping

**PRD.md Sections:**
| Section | Content | Use For |
|---------|---------|---------|
| 1 | Overview | Goal, success metrics |
| 2 | User & Market Analysis | User context |
| 3 | Requirements & Scope | Feature scope, acceptance criteria |
| 4 | User Flows & Key Interactions | Flow requirements |
| 5 | Non-Functional Requirements | NFR constraints |
| 8 | Timeline & Milestones | Milestone references |

**DESIGN_SPEC.md Sections:**
| Section | Content | Use For |
|---------|---------|---------|
| 4 | IA & Flows | Page/component structure |
| 5 | Visual System | Styling requirements |
| 6 | Component Specifications | Component implementation |
| 7 | Interaction Specifications | Interaction requirements, a11y |

**ARCHITECT.md Sections:**
| Section | Content | Use For |
|---------|---------|---------|
| 3 | Architecture Views | Module structure |
| 4 | Core Data Models | Data model |
| 6 | Feature Architecture | Feature mapping |
| 10 | Developer Implementation Guide | File paths, commands |
| 11 | Module Implementation Roadmap | Development order |
| 12 | Development Workflow | Workflow requirements |

---

# Phased Plan Templates

## Template A: Single File with Phases (Medium Projects)

**Use when:** 6-10 modules OR 51-100 TDD steps

```markdown
# [Feature Name] Implementation Plan

> **For Claude:** Use superpowers:executing-plans OR superpowers:subagent-driven-development
> **IMPORTANT:** Execute phases sequentially. Each phase MUST pass checkpoint validation before proceeding.
> **TDD:** Each step follows RED → GREEN → REFACTOR → COMMIT

**Goal:** [From PRD Section 1.2]
**Architecture:** [From ARCHITECT Section 1.1]
**Tech Stack:** [From ARCHITECT Section 8]

## Project Scale
- **Total Modules:** X
- **Estimated TDD Steps:** Y
- **Phases:** Z

---

## Phase 1: [Phase Name] (Modules: A, B)

**Estimated Steps:** [count]
**Dependencies:** None / [list]
**Duration:** [estimate]

### Module A: [Module Name]
[Use standard module template from above...]

### Module B: [Module Name]
[Use standard module template from above...]

---

## Phase 1 Checkpoint

- [ ] All tests in phase pass (command: `npm test`)
- [ ] Build succeeds (command: `npm run build`)
- [ ] Documentation updated
- [ ] Next phase dependencies satisfied

**Verification commands:**
```bash
npm test              # All phase tests pass
npm run build         # Build succeeds
npm run lint          # No linting errors
```

---

## Phase 2: [Phase Name] (Modules: C, D, E)

**Estimated Steps:** [count]
**Dependencies:** Phase 1 complete
**Duration:** [estimate]

[Modules and features using standard template...]

---

## Phase 2 Checkpoint

- [ ] All tests in phase pass
- [ ] Build succeeds
- [ ] Documentation updated
- [ ] Next phase dependencies satisfied

---

[Continue for additional phases...]

## Gaps and Assumptions
[Use standard template from above...]
```

## Template B: Multi-File Organization (Large Projects)

**Use when:** >10 modules OR >100 TDD steps

### Overview File: IMPLEMENTATION_PLAN.md

```markdown
# [Feature Name] Implementation Plan - Overview

> **For Claude:** Execute phases sequentially using phase_N_name.md files
> **IMPORTANT:** Complete Phase N checkpoint before starting Phase N+1
> **Per phase:** Use superpowers:subagent-driven-development

**Goal:** [From PRD Section 1.2]
**Architecture:** [From ARCHITECT Section 1.1]
**Tech Stack:** [From ARCHITECT Section 8]

## Project Scale
- **Total Modules:** X
- **Estimated TDD Steps:** Y
- **Total Phases:** Z

---

## Phase 1: [Phase Name]

**Modules:** A, B
**Estimated Steps:** [count]
**Dependencies:** None
**Duration:** [estimate]

**File:** `phase_1_[phase_name].md`

### Module A: [Module Name]
- Feature 1.1: [title]
- Feature 1.2: [title]
- Feature 1.3: [title]

### Module B: [Module Name]
- Feature 2.1: [title]

---

## Phase 2: [Phase Name]

**Modules:** C, D, E
**Estimated Steps:** [count]
**Dependencies:** Phase 1 complete
**Duration:** [estimate]

**File:** `phase_2_[phase_name].md`

[Continue for all phases...]

---

## Execution Order

1. **Phase 1** → Complete all tasks in `phase_1_[name].md` → Verify checkpoint
2. **Phase 2** → Complete all tasks in `phase_2_[name].md` → Verify checkpoint
3. **Phase 3** → Complete all tasks in `phase_3_[name].md` → Verify checkpoint
4. [Continue...]

## Gaps and Assumptions

[Summary of gaps - full details in phase files if needed]
```

### Phase Detail File: phase_N_name.md

```markdown
# Phase N: [Phase Name]

> **For Claude:** Use superpowers:subagent-driven-development for this phase
> **IMPORTANT:** Complete ALL features in this phase before verifying checkpoint

## Overview
**Phase Number:** N
**Modules:** [list]
**Estimated Steps:** [count]
**Dependencies:** Phase N-1 complete
**Duration:** [estimate]

## Phase Prerequisites
- [ ] Phase N-1 checkpoint passed
- [ ] All previous tests passing
- [ ] Build succeeds

---

## Module A: [Module Name]

**Source:** ARCHITECT Section 6.X
**Dependencies:** [list]
**Tech Stack:** [from ARCHITECT Section 8]

### Feature A.1: [Feature Name]
[Use standard feature template with TDD steps...]

### Feature A.2: [Feature Name]
[Use standard feature template with TDD steps...]

---

## Module B: [Module Name]
[Continue for all modules in phase...]

---

## Phase N Checkpoint

- [ ] All tests in phase pass
```bash
npm test -- --testPathPattern="phase-(N|N-1|N-2)"
# Expected: All tests PASS
```

- [ ] Build succeeds
```bash
npm run build
# Expected: Build succeeds with no errors
```

- [ ] Documentation updated
- [ ] Next phase dependencies satisfied
```bash
# Verify dependencies from next phase are available
npm list [dependency-name]
# Expected: Dependency installed and available
```

**Checkpoint verification complete?** Only proceed to Phase N+1 if all checks pass.
```

## Phase Checkpoint Template (Reusable)

```markdown
## Phase N Checkpoint

### Test Verification
- [ ] All tests in phase pass
```bash
npm test -- [test-pattern]
# Expected: All tests PASS
```

### Build Verification
- [ ] Build succeeds
```bash
npm run build
# Expected: Build succeeds
```

### Documentation Verification
- [ ] Code comments complete
- [ ] README updated (if needed)
- [ ] API documentation updated (if applicable)

### Dependency Verification
- [ ] Next phase dependencies installed
- [ ] Dependent modules export correct interfaces
- [ ] Integration tests pass

**Proceed to Phase N+1 only when all checks pass.**
```
