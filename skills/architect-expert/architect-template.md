# ARCHITECT Markdown Template

Use this template when generating system architecture documents.

Copy this structure and fill in all sections. Do not skip any sections.

**IMPORTANT:** This template is in English, but actual generated documents should be in **Chinese (Simplified)** per user requirements.

```markdown
# System Architecture Document (ARCHITECT)

> Feature/Module: {feature name}
> Path: `.claude/superpowers/plan/change/{feature}/ARCHITECT.md` (use English for {feature})
> Related document: `.claude/superpowers/plan/change/{feature}/PRD.md`
> Related document: `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md`
> Any changes must update this file synchronously

## 1. Architecture Overview

### 1.1 Goals and Scope
- Feature name:
- Core objectives:
- Scope boundaries:
- Out of scope for this iteration:

### 1.2 Key Constraints
- Time constraints:
- Resource constraints:
- Technical constraints:
- Compliance/Security constraints:
- Platform constraints:

### 1.3 Success Metrics
- Performance metrics:
- Availability metrics:
- Business metrics:

## 2. Architecture Principles and Quality Attributes

### 2.1 Architecture Principles
- Principle 1:
- Principle 2:
- Principle 3:

### 2.2 Quality Attributes
| Attribute | Target | Validation Method |
|-----------|--------|-------------------|
| Reliability |  |  |
| Performance |  |  |
| Security/Compliance |  |  |
| Scalability |  |  |
| Observability |  |  |

## 3. System Layering and Module Boundaries

### 3.1 Layered Architecture

```
┌─────────────────────────────────────┐
│       Presentation Layer             │
│  Web / Mobile / API Gateway          │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│         Application Layer            │
│   Business Logic / Orchestration     │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│            Domain Layer              │
│    Core Business Models / Services   │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│       Infrastructure Layer           │
│  Data Access / External Integration  │
└─────────────────────────────────────┘
```

### 3.2 Module Inventory and Responsibilities

| Module Name | Responsibilities | Main Interfaces | Dependencies |
|-------------|-------------------|------------------|--------------|
| Module A |  |  |  |
| Module B |  |  |  |

### 3.3 Module Dependencies

```
Module A ──→ Module B ──→ Module C
  ↑         ↓
  └─────────┘
```

## 4. Core Data Models and Data Flow

### 4.1 Key Entities/Domain Models

| Entity Name | Core Fields | Relationships | Lifecycle |
|-------------|-------------|----------------|-----------|
| Entity A |  |  |  |
| Entity B |  |  |  |

### 4.2 Key Flow Data Flow (by Feature/Page)

**Feature/Page: {Feature name}**
- Input data:
- Processing logic:
- Output data:
- State changes:

### 4.3 State Change/Consistency Strategy
- State definition:
- State transition rules:
- Consistency guarantees:
- Transaction boundaries:

## 5. Interfaces and Integration

### 5.1 Internal Interfaces

| Interface Name | Provider | Consumer | Protocol | Sync/Async |
|----------------|----------|----------|----------|------------|
|  |  |  |  |  |

### 5.2 External Systems/Third-Party Integration

| System Name | Purpose | Integration Method | Failure Handling |
|-------------|---------|-------------------|------------------|
|  |  |  |  |

### 5.3 Sync/Async Mechanisms and Failure Retry
- Sync scenarios:
- Async scenarios:
- Retry strategy:
- Idempotency guarantees:

## 6. Feature/Page-Level Architecture Design

> Map directly to PRD feature list and DESIGN_SPEC page list

### 6.1 {Feature/Page Name}

**Goals and Scope**
- Feature description:
- Scope boundaries:

**Entry and Trigger**
- User entry points:
- Trigger conditions:
- Prerequisites:

**Key Flows (including exceptions)**
- Main flow:
- Exception flows:
- Boundary conditions:

**Key Data and State**
- Input data:
- Output data:
- State changes:

**Involved Modules/Components**
- Frontend components:
- Backend services:
- Data models:

**Interfaces and Dependencies**
- Internal interfaces:
- External dependencies:
- Dependency order:

**Permissions and Security**
- Access control:
- Data permissions:
- Security requirements:

**Performance and Boundaries**
- Performance requirements:
- Capacity limits:
- Boundary handling:

**Expert Skill Assignment and Deliverables**
- Frontend: [Skill name] → Deliverables: [Specific deliverables]
- Backend: [Skill name] → Deliverables: [Specific deliverables]
- Multi-platform: [Skill name] → Deliverables: [Specific deliverables]

### 6.2 {Feature/Page Name}

[Repeat above structure]

## 7. System Structure and Data Flow Design

### 7.1 System Structure Diagram

```
[Draw architecture diagram based on specific system]
```

### 7.2 Key Data Flows

**Data Flow 1: {Flow name}**
- Origin:
- Destination:
- Intermediate processing:
- Data transformations:

## 8. Technology Selection

### 8.1 Frontend
| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
|  |  |  |  |

### 8.2 Backend
| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
|  |  |  |  |

### 8.3 Data and Cache
| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
|  |  |  |  |

### 8.4 Infrastructure/Deployment
| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
|  |  |  |  |

### 8.5 Selection Rationale and Alternatives
- Selection rationale:
- Alternative considerations:
- Risk assessment:

### 8.6 Technology Constraints and Required Commands (CRITICAL)
<EXTREMELY_IMPORTANT>
**This section defines MANDATORY commands, versions, and methods for implementation.**
**Subagents MUST follow these constraints exactly - DO NOT use deprecated commands.**
</EXTREMELY_IMPORTANT>

**Frontend Technology Constraints**
| Technology Area | Required Command/Method | Deprecated/Prohibited | Reference |
|-----------------|------------------------|----------------------|-----------|
| Project Initialization | | | |
| Dependency Management | | | |
| Build/Dev Server | | | |
| Testing | | | |

**Backend Technology Constraints**
| Technology Area | Required Command/Method | Deprecated/Prohibited | Reference |
|-----------------|------------------------|----------------------|-----------|
| Project Initialization | | | |
| API/Server | | | |
| Database | | | |
| Testing | | | |

**Multi-Platform Technology Constraints (if applicable)**
| Technology Area | Required Command/Method | Deprecated/Prohibited | Reference |
|-----------------|------------------------|----------------------|-----------|
| Project Initialization | | | |
| Platform-Specific Builds | | | |
| Dependencies | | | |

**Version Requirements**
| Dependency | Minimum Version | Recommended Version | Why |
|------------|-----------------|---------------------|-----|
|  |  |  |  |
|  |  |  |  |

**Best Practice Requirements**
- [ ] Always use `npx <package>@latest` for CLI tools
- [ ] Prefer official documentation over community tutorials
- [ ] Verify command success before proceeding
- [ ] Use auto-linking over manual linking (if applicable)

## 9. Non-Functional Requirements

### 9.1 Performance Metrics
| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Response time |  |  |
| Throughput |  |  |
| Concurrency |  |  |

### 9.2 Security and Permissions
- Authentication:
- Authorization mechanism:
- Data encryption:
- Audit logs:

### 9.3 Availability and Disaster Recovery
- Availability target:
- Disaster recovery strategy:
- Degradation plan:
- Recovery mechanism:

### 9.4 Monitoring and Alerting
- Monitoring metrics:
- Alerting rules:
- Logging strategy:

## 10. Risks and Trade-offs

### 10.1 Risk List

| Risk | Probability | Impact | Level | Mitigation Strategy |
|------|-------------|--------|-------|---------------------|
|  |  |  |  |  |

### 10.2 Technical Trade-offs
| Decision | Advantages | Disadvantages | Mitigation |
|----------|------------|----------------|------------|
|  |  |  |  |

## 11. Development Division and Milestones

### 11.1 Role Division and Task List

**Frontend Development**
| Task | Description | Dependencies | Estimate |
|------|-------------|---------------|----------|
|  |  |  |  |

**Backend Development**
| Task | Description | Dependencies | Estimate |
|------|-------------|---------------|----------|
|  |  |  |  |

**Data Engineering**
| Task | Description | Dependencies | Estimate |
|------|-------------|---------------|----------|
|  |  |  |  |

**Infrastructure**
| Task | Description | Dependencies | Estimate |
|------|-------------|---------------|----------|
|  |  |  |  |

**Testing**
| Task | Description | Dependencies | Estimate |
|------|-------------|---------------|----------|
|  |  |  |  |

### 11.2 Skill Assignment and Deliverables List

**Assignment Format Explanation**

Each feature assignment needs to specify:
1. **Type**: Sub-agent / Skill / Main Agent
2. **Location**: User-level ~/.claude/ or Project-level {project}/
3. **Name**: Specific sub-agent or skill name
4. **Deliverables**: Specific documents/code to deliver

**Assignment by Feature**

| Feature | Type | Location | Name | Deliverables |
|---------|------|----------|------|--------------|
| Feature A | Skill | Project-level | frontend-developer-expert | React components, styles, routing |
| Feature B | Sub-agent | Project-level | code-reviewer | Code review report |
| Feature C | Main Agent | - | Main agent | API design, data models |

**Search Result Record Template**

```
Feature: [Feature name]
Role: [Frontend/Backend/Multi-platform, etc.]

Search record:
Step 1: ~/.claude/agents/*{role}*.md → [Result]
Step 2: agents/*{role}*.md → [Result]
Step 3: ~/.claude/skills/*{role}*/SKILL.md → [Result]
Step 4: skills/*{role}*/SKILL.md → [Result]

Assignment result:
- Type: [Sub-agent / Skill / Main Agent]
- Location: [User-level / Project-level / -]
- Name: [Specific name]
- Deliverables: [Specific deliverable content]
```

**Examples**

```
Feature: User login page
Role: Frontend development

Search record:
Step 1: ~/.claude/agents/*frontend*.md → No match
Step 2: agents/*frontend*.md → No match
Step 3: ~/.claude/skills/*frontend*.md → No match
Step 4: skills/*frontend*.md → frontend-developer-expert

Assignment result:
- Type: Skill
- Location: Project-level
- Name: frontend-developer-expert
- Deliverables:
  * Login page component (LoginForm.tsx)
  * Form validation logic
  * API integration code
  * Unit test files
```

```
Feature: Code review
Role: Code reviewer

Search record:
Step 1: ~/.claude/agents/*review*.md → No match
Step 2: agents/*review*.md → code-reviewer.md

Assignment result:
- Type: Sub-agent
- Location: Project-level
- Name: code-reviewer
- Deliverables:
  * Code review report
  * Issue list
  * Improvement suggestions
```

```
Feature: Database design
Role: Database engineer

Search record:
Step 1: ~/.claude/agents/*database*.md → No match
Step 2: agents/*database*.md → No match
Step 3: ~/.claude/skills/*database*.md → No match
Step 4: skills/*database*.md → No match

Assignment result:
- Type: Main Agent
- Location: -
- Name: Main agent
- Deliverables:
  * Data table design (DDL)
  * Index strategy
  * Migration scripts
```

**Complete Feature Assignment Table**

| Feature | Role | Type | Location | Name | Deliverables |
|---------|------|------|----------|------|--------------|
| User login | Frontend | Skill | Project-level | frontend-developer-expert | LoginForm.tsx, validation logic, API calls |
| User login | Backend | Main Agent | - | Main agent | JWT auth, password hash, API endpoints |
| Data table design | Database | Main Agent | - | Main agent | DDL, indexes, migration scripts |
| Code review | Reviewer | Sub-agent | Project-level | code-reviewer | Review report |

### 11.3 Key Dependencies

```
Task A ──→ Task B ──→ Task C
  ↑         ↓
  └─────────┘

Critical path: A → B → C
```

### 11.4 Milestones and Deliverables

| Milestone | Time Point | Deliverables | Acceptance Criteria |
|-----------|------------|--------------|---------------------|
| M1 |  |  |  |
| M2 |  |  |  |
| M3 |  |  |  |

## 12. Assumptions and Validation Plan
- Assumption 1: ... → Validation method/Metrics/Owner/Time

## 13. Change Log
Only record when changes occur. No entry if unchanged.
| Version | Date | Changes | Owner |
|---------|------|---------|-------|
| v0.1 |  | Initial |  |
```

## Template Usage Guidelines

1. **Feature naming:** Use English for directory names (e.g., `user-authentication`, `dashboard-feature`)
2. **Language:** Template structure is in English, but fill content in **Chinese (Simplified)**
3. **Completeness:** Fill all sections, do not skip
4. **Updates:** Keep this file synchronized with any changes
