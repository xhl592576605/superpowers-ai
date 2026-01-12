# Prompt Frameworks Reference

This document provides detailed reference for all structured prompt frameworks used by prompt-expert.

## CO-STAR Framework (General Tasks)

Best for: General tasks requiring clear structure and comprehensive coverage.

| Element | Description | Example |
|---------|-------------|---------|
| **Context** | Background information | You are a senior code review expert |
| **Objective** | Target task | Analyze code quality, performance, and maintainability |
| **Style** | Style requirements | Professional, specific, constructive |
| **Tone** | Tone | Objective, friendly, instructional |
| **Audience** | Target audience | Developers, technical team |
| **Response** | Output format | Issue list, improvement suggestions, code examples |

### CO-STAR Template

```markdown
# [Task Name]

## Context
[Background information, role definition]

## Objective
[Specific task goals, what to accomplish]

## Style
[Style requirements: professional, casual, technical, etc.]

## Tone
[Tone: objective, friendly, authoritative, etc.]

## Audience
[Who will receive this output]

## Response Format
[Expected output structure]
- [Format requirement 1]
- [Format requirement 2]

## Additional Context
[Any additional information needed]
```

### CO-STAR Example

```markdown
# Code Review Task

## Context
You are a senior code review expert with 10+ years of experience in software development and code quality assurance.

## Objective
Review the provided code and analyze:
1. Code quality and readability
2. Potential bugs or edge cases
3. Performance optimization opportunities
4. Design pattern applications

## Style
Professional, specific, actionable, constructive

## Tone
Objective, friendly, instructional

## Audience
Software developers seeking to improve their code quality

## Response Format
- **Strengths Summary** (2-3 bullet points)
- **Issues List** (prioritized by severity: Critical / High / Medium / Low)
- **Improvement Suggestions** (specific, actionable with code examples)
- **Best Practices** (relevant to this code)

## Code to Review
[Paste code here]
```

---

## CREATE Framework (Creative Tasks)

Best for: Creative tasks, content generation, design work.

| Element | Description | Example |
|---------|-------------|---------|
| **Context** | Background and context | Project background, target audience |
| **Role** | Role | Creative director, copywriting expert |
| **Expectations** | Expectations and constraints | Brand tone, character limit |
| **Actions** | Specific actions | Create, rewrite, optimize |
| **Tone** | Tone | Professional, creative, approachable |
| **Example** | Example | Provide reference examples |

### CREATE Template

```markdown
# [Creative Task Name]

## Context
[Project background, target audience, brand guidelines]

## Role
[Who you are: creative expert, designer, copywriter, etc.]

## Expectations
[Quality standards, constraints, brand tone]
- [Constraint 1]
- [Constraint 2]

## Actions
[Specific creative actions to take]
1. [Action 1]
2. [Action 2]

## Tone
[Emotional tone: professional, playful, inspiring, etc.]

## Examples
[Reference examples if available]
```

### CREATE Example

```markdown
# Marketing Copy Creation

## Context
We are launching a new productivity app for remote teams. Target audience: tech-savvy professionals aged 25-40 who value efficiency and collaboration.

## Role
You are an expert copywriter specializing in tech marketing with 10+ years of experience creating compelling copy for SaaS products.

## Expectations
- Brand tone: Professional yet approachable, modern, confident
- Length: 50-75 words per headline
- Must include: Benefit-driven messaging
- Must avoid: Hype, jargon, overpromising

## Actions
Create 3 headline options for the landing page hero section, each highlighting a different core benefit:
1. Focus on time-saving
2. Focus on team collaboration
3. Focus on ease of use

## Tone
Empowering, efficient, trustworthy, slightly casual but professional

## Examples
Reference style: "Streamline your workflow, amplify your results"
```

---

## ROLE Framework (Role-Playing)

Best for: Role-specific tasks, expert consultation, specialized knowledge.

| Element | Description | Example |
|---------|-------------|---------|
| **Role** | Role definition | You are an experienced product manager |
| **Objective** | Task goal | Analyze user needs and provide solutions |
| **Constraints** | Constraint conditions | Follow PRD template, max 1000 words |
| **Examples** | Examples | Provide input-output examples |

### ROLE Template

```markdown
# [Role-Based Task]

## Role
[Specific role with expertise level]

## Objective
[What you need to accomplish]

## Constraints
[Boundaries and limitations]
- **MUST:** [Required actions]
- **MUST NOT:** [Prohibited actions]
- **Limit:** [Any limits]

## Examples
[Input-output examples if applicable]
```

### ROLE Example

```markdown
# Product Requirements Analysis

## Role
You are a senior Product Manager with 8+ years of experience in B2B SaaS products, expert in user research, market analysis, and requirements documentation.

## Objective
Analyze the provided user feedback and feature requests to create a prioritized product roadmap with clear acceptance criteria.

## Constraints
- **MUST:** Use PRD template provided
- **MUST:** Apply MoSCoW prioritization (Must/Should/Could/Won't)
- **MUST NOT:** Include features outside technical feasibility
- **Limit:** Maximum 1500 words
- **Format:** Markdown with clear sections

## Examples
Input: "Users want to export reports to PDF"
Output:
```
**Feature:** PDF Report Export
**Priority:** Should
**Acceptance Criteria:**
- Users can export any report to PDF
- PDF includes all charts and tables
- Export completes within 5 seconds for reports < 50 pages
```

## User Feedback
[Paste user feedback here]
```

---

## RTF Framework (Problem-Solving)

Best for: Troubleshooting, debugging, support scenarios.

| Element | Description | Example |
|---------|-------------|---------|
| **Role** | Role | Technical support expert |
| **Task** | Task | Diagnose and solve user problem |
| **Format** | Format | Problem description, cause analysis, solution, prevention |

### RTF Template

```markdown
# [Problem-Solving Task]

## Role
[Expert role for this problem domain]

## Task
[Specific problem to solve]

## Output Format
[Required structure]
1. [Section 1]
2. [Section 2]
3. [Section 3]
```

### RTF Example

```markdown
# Technical Issue Resolution

## Role
You are a Level 3 Technical Support specialist with deep expertise in web technologies, debugging, and system architecture.

## Task
Diagnose and resolve the reported technical issue. Provide root cause analysis and step-by-step resolution.

## Output Format

### 1. Problem Summary
- **Issue:** [Concise description]
- **Impact:** [Who/what affected]
- **Severity:** [Critical/High/Medium/Low]

### 2. Root Cause Analysis
- **Symptoms:** [Observed behaviors]
- **Investigation:** [Diagnostic steps]
- **Root Cause:** [Underlying issue]

### 3. Resolution Steps
1. [Step 1]
2. [Step 2]
3. [Step 3]

### 4. Prevention Measures
- **Immediate:** [What to do now]
- **Long-term:** [How to prevent recurrence]

## Issue Report
[Paste issue details here]
```

---

## BROKE Framework (Complex Tasks)

Best for: Complex, multi-step tasks requiring iteration.

| Element | Description | Example |
|---------|-------------|---------|
| **Background** | Background | Project info, historical data |
| **Role** | Role | Data analyst |
| **Objective** | Goal | Generate data reports and insights |
| **Key results** | Key results | Data visualization, trend analysis |
| **Evolve** | Iterate | Optimize based on feedback |

### BROKE Template

```markdown
# [Complex Task Name]

## Background
[Project background, historical data, context]

## Role
[Expert role for this complex task]

## Objective
[Overall goal and specific objectives]

## Key Results
[Expected deliverables]
- [Deliverable 1]
- [Deliverable 2]

## Evolve
[Iteration plan based on feedback]
```

### BROKE Example

```markdown
# Data Analysis and Reporting

## Background
Our e-commerce platform has 3 years of transaction data. We need to understand customer behavior patterns, identify trends, and generate actionable insights for business strategy.

## Role
You are a senior Data Analyst with expertise in e-commerce analytics, customer behavior modeling, and data visualization.

## Objective
Analyze the provided dataset and generate comprehensive insights including customer segmentation, purchase patterns, seasonal trends, and recommendations for business optimization.

## Key Results

### 1. Data Overview
- Summary statistics
- Data quality assessment
- Key metrics dashboard

### 2. Customer Analysis
- Segmentation by behavior
- Lifetime value analysis
- Churn risk identification

### 3. Trend Analysis
- Seasonal patterns
- Year-over-year growth
- Category performance

### 4. Recommendations
- Actionable business insights
- Prioritized optimization opportunities
- A/B testing suggestions

### 5. Visualizations
- Charts and graphs
- Interactive dashboards
- Executive summary slides

## Evolve
After initial analysis:
1. Review feedback from stakeholders
2. Refine analysis based on questions
3. Provide deeper dive on high-interest areas
4. Update recommendations with new insights

## Dataset
[Provide dataset or describe data structure]
```

---

## Framework Selection Guide

| Task Type | Best Framework | Why |
|-----------|---------------|-----|
| Code review, analysis, general tasks | CO-STAR | Comprehensive coverage, clear structure |
| Creative writing, marketing, design | CREATE | Focuses on creative constraints and output |
| Expert consultation, specialized roles | ROLE | Emphasizes expertise and domain knowledge |
| Debugging, troubleshooting, support | RTF | Problem-solution format, diagnostic focus |
| Data analysis, research, multi-step projects | BROKE | Handles complexity, includes iteration |
| Simple instructions | Direct prompt | No framework needed |

## Quick Decision Tree

```
Is this a creative task?
├─ Yes → CREATE Framework
└─ No → Is this problem-solving/troubleshooting?
    ├─ Yes → RTF Framework
    └─ No → Is this a complex, multi-step task?
        ├─ Yes → BROKE Framework
        └─ No → Does this require specific expertise?
            ├─ Yes → ROLE Framework
            └─ No → CO-STAR Framework (default)
```

## Combining Frameworks

For complex scenarios, frameworks can be combined:

**Example: CO-STAR + ROLE**
```markdown
## Context (CO-STAR)
You are working on a financial application...

## Role (ROLE)
You are a senior security architect with 15+ years of experience...

## Objective (CO-STAR)
Design authentication flow balancing security and UX...
```

**Combination Guidelines:**
- Start with primary framework matching main task type
- Add elements from secondary frameworks only if they add value
- Don't over-engineer simple tasks
- Maintain clarity and avoid redundancy
