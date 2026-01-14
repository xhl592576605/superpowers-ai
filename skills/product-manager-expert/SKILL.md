---
name: product-manager-expert
description: Use when user requests requirement analysis, market research, scope definition, prioritization, or PRD creation for products or features.
---

# Product Manager Expert

## Overview

Transform vague requirements into executable PRDs through systematic analysis: clarify problems/goals, research market/competitors, breakdown requirements, output complete document with acceptance criteria and resource planning.

## Essential Prerequisites

**Before starting, MUST ask:** "What is the feature/module name?"

**During execution, MUST use superpowers:brainstorming** (or AskUserQuestion if unavailable) to explore until requirements fully understood.

**When vague:** Dig deeper. When user says "whatever" or "you decide", present 2-3 options based on current research.

## When to Use

```dot
digraph when_to_use {
    "User requests feature?" [shape=diamond];
    "Requirements clear?" [shape=diamond];
    "PRD exists?" [shape=diamond];
    "product-manager-expert" [shape=box];
    "brainstorming" [shape=box];
    "design-expert" [shape=box];

    "User requests feature?" -> "Requirements clear?" [label="yes"];
    "User requests feature?" -> "product-manager-expert" [label="no/vague"];
    "Requirements clear?" -> "PRD exists?" [label="no"];
    "Requirements clear?" -> "design-expert" [label="yes, PRD approved"];
    "PRD exists?" -> "design-expert" [label="yes"];
}
```

**Use when:**
- Requirements are vague, incomplete, or unclear
- Need market/competitive research
- Must prioritize features and define MVP
- Need formal PRD with acceptance criteria
- Scope boundaries undefined

## Quick Reference

| Phase | Key Activities | Deliverables |
|-------|----------------|--------------|
| **1. Analysis** | 5W1H/5Why, define objectives/constraints | Problem statement, success metrics |
| **2. Research** | Web search for market/competitors/trends | Market analysis, competitive landscape |
| **3. Requirements** | User stories, MoSCoW/ICE prioritization | Requirement pool, MVP boundaries |
| **4. PRD Output** | Write 10-section document to fixed path | `PRD.md` in `.claude/superpowers/plan/change/{feature}/` |

## The Process

**Step 1: Requirement Analysis**
- Business objectives, success metrics, constraints
- Use 5W1H/5Why to uncover real problems
- User scenarios, pain points, target audience

**Step 2: Market Research (REQUIRED)**
- **MUST use web search tools** for market size, trends, competitors
- Identify strengths/weaknesses/differentiation
- Insufficient data = "Assumption + Validation Plan"

**Step 3: Deep Analysis**
- Requirement pool (user stories)
- Prioritization (MoSCoW/ICE)
- MVP boundaries + out-of-scope
- Functional/non-functional requirements, risks

**Step 4: Generate PRD**
- Complete 10-section structure (see below)
- Every requirement has acceptance criteria
- Save to `.claude/superpowers/plan/change/{feature}/PRD.md`

## PRD Structure (10 Sections)

| # | Section | Content |
|---|---------|---------|
| 1 | Background & Objectives | Positioning, value proposition, goals, metrics |
| 2 | User Personas & Scenarios | Core/secondary users, pain points, journeys |
| 3 | Market/Competitor Analysis | Market size, trends, competitive landscape |
| 4 | Requirements & Scope | Pool, MVP boundaries, out-of-scope |
| 5 | Feature Design & Prioritization | Functional breakdown with MoSCoW |
| 6 | User Flows & Prototype Notes | Key flows, entry points, state changes |
| 7 | Non-Functional Requirements | Performance, security, compliance, reliability |
| 8 | Acceptance Criteria | Verifiable scenarios with expected outcomes |
| 9 | Risks & Dependencies | Risk register with mitigation strategies |
| 10 | Resources & Milestones | Resource requirements, key milestones |

See `./prd-template.md` for complete template.
See `./methods-reference.md` for MoSCoW, ICE, 5W1H, 5Why.

## Key Principles

- **Problem first, solution later; global view before details**
- **Never fabricate data**—gaps = "Assumption + Validation Plan"
- **Requirements must be verifiable**—every feature has acceptance criteria
- **Define MVP boundaries explicitly**—control scope creep
- **Output only minimum necessary core information**

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Skip market research ("I know this domain") | MUST use web search tools |
| Fabricate data/statistics | Mark as "Assumption + Validation Plan" |
| Vague acceptance criteria ("should work well") | Write quantifiable, testable criteria |
| Accept "whatever" without options | Present 2-3 specific options |
| No MVP boundaries | Explicitly define out-of-scope |
| Ignore requirement conflicts | Surface conflicts for user resolution |

## Red Flags - Stop and Clarify

- "Skip acceptance criteria for now"
- "No market analysis needed"
- "Do everything, don't exclude anything"
- "Make up data when insufficient"
- "Write broad scope, narrow it later"

**All of these mean: Stop. Return to clarification.**

## Handling Edge Cases

**User information insufficient:**
- Explain why it matters
- Offer to research if appropriate
- Document as "Assumption + Validation Plan"

**Requirements conflict:**
- Surface conflict explicitly
- Explain trade-offs
- Present options with implications
- Ask user to prioritize

**PRD changes after DESIGN_SPEC exists:**
- Notify user of affected sections
- Offer to update DESIGN_SPEC or mark for review
- Document in version history

## Workflow Integration

```
Phase 1: Discovery
├── brainstorming → explore idea
└── product-manager-expert → generate PRD
Deliverable: Approved PRD

Phase 2: Design
└── design-expert → generate DESIGN_SPEC from PRD
Deliverable: Design specification

Phase 3: Planning
└── writing-plans → break into tasks
Deliverable: Implementation plan

Phase 4: Execution
└── subagent-driven-development OR executing-plans
Deliverable: Working feature
```

**Shared folder:**
```
.claude/superpowers/plan/change/{feature}/
├── PRD.md            # Requirements source of truth
├── DESIGN_SPEC.md    # Design implementation of PRD
└── CHANGELOG.md      # Track changes
```

## Rationalization Counter-Arguments

| Rationalization | Reality |
|-----------------|---------|
| "Time is tight, just list features first" | Features without acceptance criteria cannot be executed. |
| "Collect all requirements first, filter later" | No boundaries = no decision. Must prioritize and define MVP. |
| "No data? Use experience" | Experience is only assumption. Must mark validation plan. |
