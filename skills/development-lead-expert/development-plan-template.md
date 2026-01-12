# Development Plan Template

Use this template structure for DEVELOPMENT_PLAN.md. Save to `.claude/superpowers/plan/change/{feature}/DEVELOPMENT_PLAN.md`

**IMPORTANT:** This template is in English, but actual generated documents should be in **Chinese (Simplified)** per user requirements.

```markdown
# Development Plan

> **Feature/Module:** {feature name}
> **Created:** {YYYY-MM-DD}
> **Path:** `.claude/superpowers/plan/change/{feature}/DEVELOPMENT_PLAN.md`
> **Related Documents:**
> - `.claude/superpowers/plan/change/{feature}/PRD.md`
> - `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md`
> - `.claude/superpowers/plan/change/{feature}/ARCHITECT.md`

---

## 1. Development Overview

### 1.1 Feature Summary
{Brief description of the feature/module to be developed}

### 1.2 Development Goals
{Key objectives for this development cycle}

### 1.3 Success Criteria
{Measurable criteria that define successful completion}

### 1.4 Constraints
- **Time Constraints:** {if applicable}
- **Resource Constraints:** {if applicable}
- **Technical Constraints:** {from ARCHITECT.md Section 7}

---

## 2. Task Groups & Dependencies

### 2.1 Task Group A (Parallel - No Dependencies)
{List of tasks that can be executed in parallel}

### 2.2 Task Group B (Depends on Group A)
{List of tasks that depend on Group A completion}

### 2.3 Task Group C (Depends on Groups A/B)
{List of tasks that depend on previous groups}

---

## 3. Detailed Task List

### 3.1 {Task Name}

**Responsible Subagent:** {frontend-developer / multi-platform-developer / other}

**Priority:** P0 | P1 | P2

**Dependencies:** None | Depends on: {Task X}

**Input Document:** ARCHITECT.md Section {X}

**Output Deliverables:**
- {Specific file paths to be created/modified}
- {Modules to be created/modified}

**Constraint Scope:**
- **Allowed File Paths:**
  - `src/pages/...`
  - `src/components/...`
- **Allowed Modules:**
  - {Module Name 1}
  - {Module Name 2}
- **Context Limits:**
  - {What to implement}
  - **What NOT to touch:**

**Acceptance Criteria:**
- {Specific, measurable criteria}
- {Each criterion should be verifiable}

**Status:** pending | in_progress | completed | skipped | failed

---

### 3.2 {Task Name}

{Same structure as 3.1}

---

## 4. Subagent Dispatch Mapping

| ARCHITECT Section | Responsible Subagent | Task ID | Priority |
|---|---|---|---|
| {Section X.Y} | {subagent name} | 3.1 | P0 |
| {Section X.Z} | {subagent name} | 3.2 | P1 |

---

## 5. Risk & Mitigation

### 5.1 Identified Risks
- **Risk 1:** {description}
  - **Impact:** {High/Medium/Low}
  - **Probability:** {High/Medium/Low}
  - **Mitigation:** {action plan}

- **Risk 2:** {description}
  - **Impact:** {High/Medium/Low}
  - **Probability:** {High/Medium/Low}
  - **Mitigation:** {action plan}

### 5.2 Assumptions & Validation
- **Assumption 1:** {what we're assuming}
  - **Validation Method:** {how to verify}

---

## 6. Task Tracking

### 6.1 Status Legend
- `[ ]` **pending** - To execute
- `[⚙️]` **in_progress** - Currently executing
- `[✓]` **completed** - Successfully completed
- `[⊘]` **skipped** - Intentionally skipped
- `[✗]` **failed** - Failed with errors

### 6.2 Task Progress

#### Batch 1 (Parallel Execution)
- [ ] **Task 3.1:** {Task Name} ({subagent})
- [ ] **Task 3.2:** {Task Name} ({subagent})

#### Batch 2 (Depends on Batch 1)
- [ ] **Task 3.3:** {Task Name} ({subagent})

#### Batch 3 (Depends on Batch 2)
- [ ] **Task 3.4:** {Task Name} ({subagent})

---

## 7. Execution Record

| Timestamp | Task | Status | Notes |
|-----------|------|--------|-------|
| YYYY-MM-DD HH:mm | Task 3.1 | in_progress | Started |
| YYYY-MM-DD HH:mm | Task 3.1 | completed | Files: src/pages/LoginPage.vue, src/components/LoginForm.vue |
| YYYY-MM-DD HH:mm | Task 3.2 | failed | Error: {description}, Retrying... |
| YYYY-MM-DD HH:mm | Task 3.2 | completed | Files: ... |

---

## 8. Completion Summary

### 8.1 Completed Deliverables
{List of all completed work items}

### 8.2 Unresolved Issues
{List of any outstanding issues or concerns}

### 8.3 Next Steps
{Recommended next actions or follow-up work}

---

*Document Version: 1.0*
*Last Updated: {YYYY-MM-DD HH:mm}*
```

---

## Template Usage Guidelines

1. **Feature Name:** Use English for directory names (e.g., `user-authentication`, `dashboard-feature`)
2. **Task IDs:** Use hierarchical numbering (3.1, 3.2, 3.3, etc.)
3. **Priorities:**
   - **P0 (Critical):** Must complete for feature to work
   - **P1 (High):** Important but not blocking
   - **P2 (Medium):** Nice to have if time permits
4. **Status Updates:** Update task status after each batch completion
5. **Execution Record:** Add entries with timestamp and notes for each significant event
