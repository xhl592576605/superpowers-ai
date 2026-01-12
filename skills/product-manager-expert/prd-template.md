# PRD Markdown Template

Use this template when generating PRD documents.

Copy this structure and fill in all sections. Do not skip any sections.

**IMPORTANT:** This template is in English, but actual generated documents should be in **Chinese (Simplified)** per user requirements.

```markdown
# Product Requirements Document (PRD)

> Feature/Module: {feature name}
> Path: `.claude/superpowers/plan/change/{feature}/PRD.md` (use English for {feature})
> UI Design Spec Path: `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md` (same feature folder)
> Any changes must update this file synchronously

## 1. Product Overview

### 1.1 Product Name
- {Product Name}

### 1.2 Product Positioning / Value Proposition
- One-line positioning:
- Problem solved:
- Core value:
- Target scenarios:

### 1.3 Background and Objectives
- Background description:
- Business objectives:
- Success metrics (quantifiable):
- Business status (data/facts):
- Change drivers (policy/market/technology):

### 1.4 Target Users
- Core users:
- Secondary users:
- Decision makers/payers (if applicable):
- Key influencers:

### 1.5 Product Objectives (Phased)
- P0 (Launch/Validation):
- P1 (Growth/Optimization):
- P2 (Scale):

### 1.6 Business Model (if applicable)
- Revenue model:
- Pricing range:
- Conversion path:
- Core growth levers:

## 2. Market and User Analysis

### 2.1 Market Analysis
- Market size/trends (cite sources or assumptions):
- Key drivers:
- Constraints and risks:
- Policy/compliance points:

### 2.2 Competitive Analysis
| Competitor | Core Strengths | Main Weaknesses | Differentiation Opportunities |
|-----------|---------------|-----------------|------------------------------|
| Competitor A |  |  |  |
| Competitor B |  |  |  |

### 2.3 User Analysis

**User Segment Overview**
| User Type | Typical Role | Usage Frequency | Willingness to Pay | Key Needs |
|-----------|-------------|-----------------|-------------------|-----------|
| Core users |  |  |  |  |
| Secondary users |  |  |  |  |

**User Persona (Core Users)**
- Basic attributes:
- Occupation/Role:
- Income and budget:
- Behavioral habits:
- Core needs:

**User Persona (Secondary Users)**
- Basic attributes:
- Role and needs:

**User Pain Points (Core Users)**
1.
2.
3.

**User Pain Points (Secondary Users)**
1.
2.

**User Journey/Touchpoints**
- Touchpoint 1:
- Touchpoint 2:
- Touchpoint 3:

**Pain Point - Cause - Opportunity Table**
| Pain Point | Key Cause | Opportunity |
|------------|-----------|-------------|
|  |  |  |

## 3. Feature Architecture

### 3.1 Product Architecture (Tree Structure)
```
{Product/System}
├─ Module A
│  ├─ Sub-feature A1
│  └─ Sub-feature A2
├─ Module B
│  └─ Sub-feature B1
└─ Module C
```

### 3.2 Information Architecture / Page Inventory
| Page Name | Entry Location | Description | Role Visibility | Priority |
|-----------|----------------|-------------|------------------|----------|
| Home | Bottom Tab/Entry Button |  | All | P0 |
| List Page | Home/Search |  | Core Users | P1 |

### 3.3 Navigation Structure (if applicable)
- Bottom Tab:
- Sidebar/Secondary Entry:

## 4. Core Feature Definitions

### 4.1 MVP Must-Have Features (P0)
| Feature Name | Feature Description | User Value | Business Value | Business Rules | Exception/Boundary | Acceptance Criteria |
|--------------|---------------------|------------|----------------|----------------|-------------------|-------------------|
|  |  |  |  |  |  |  |

### 4.2 Important Features (P1)
| Feature Name | Feature Description | User Value | Business Value | Business Rules | Exception/Boundary | Acceptance Criteria |
|--------------|---------------------|------------|----------------|----------------|-------------------|-------------------|
|  |  |  |  |  |  |  |

### 4.3 Optional Features (P2)
| Feature Name | Feature Description | User Value | Business Value | Business Rules | Exception/Boundary | Acceptance Criteria |
|--------------|---------------------|------------|----------------|----------------|-------------------|-------------------|
|  |  |  |  |  |  |  |

## 5. User Flow and Prototype Notes
- Main flow (step by step):
- Exception flow:
- Key pages/prototype notes:
- Entry/Trigger conditions:
- Output results/State changes:

## 6. Non-Functional Requirements
- Performance (P95/Concurrency/Stability):
- Security/Compliance:
- Usability/Accessibility:
- Reliability (SLA/Uptime):
- Privacy/Data Protection:

## 7. Acceptance Criteria (Key)
- [Feature]: Acceptance scenario + Expected result + Boundary conditions
- Quantitative metrics (response time, success rate, etc.):

**Acceptance Scenario Table**
| Scenario | Steps | Expected Result |
|----------|-------|-----------------|
|  |  |  |

## 8. Risks and Dependencies
- Risk list (Impact/Mitigation/Level):
- External dependencies (System/API/Data):

## 9. Resources and Milestones
- Resource requirements (People/Technology/Data/Budget):
- Milestones (Time points/Deliverables):
- Key milestone acceptance points:

## 10. Assumptions and Validation Plan
- Assumption 1: ... → Validation method/Metrics/Owner/Time

## 11. Change Log / Version
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
