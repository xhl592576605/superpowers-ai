---
name: architect-expert
description: Use when PRD and DESIGN_SPEC exist and system architecture with implementation guidance is needed before development planning.
---

# Architect Expert

## Overview

Transform PRD and DESIGN_SPEC into executable architecture document with implementation guidance: define module boundaries, data flows, technology stack, AND provide developers with clear implementation roadmap, code structure, and development workflow.

## Essential Prerequisites

**Before starting, MUST confirm:** PRD and DESIGN_SPEC exist at `.agent/superpowers/plan/change/{feature}/`

**To determine feature/module name:**
- If provided in user input, use that name
- If unclear, use AskUserQuestion to confirm
- Verify with Bash: `test -f ".agent/superpowers/plan/change/{feature}/PRD.md"`

**During execution, MUST use `superpowers:brainstorming`** (or AskUserQuestion) to explore until requirements and design details are fully understood.

**Critical decisions CANNOT use assumptions** - Technology stack, integration patterns, performance/security requirements MUST be confirmed by asking.

## Quick Reference

| Phase | Key Activities | Deliverables |
|-------|----------------|--------------|
| **1. Validation** | Check PRD/DESIGN_SPEC exist, confirm constraints | Architecture objectives |
| **2. Decomposition** | Extract modules, boundaries, dependencies | Module inventory |
| **3. Architecture** | Design layers, data flows, interfaces | System architecture |
| **4. Technology** | Select tech stack with rationale | Technology decisions |
| **5. Development Guide** | Define code structure, workflow, roadmap | Implementation guidance |
| **6. Output** | Write ARCHITECT.md (architecture + development) | `ARCHITECT.md` in `.agent/superpowers/plan/change/{feature}/` |

## The Process

**Step 1: Requirement Input Validation**
- Verify PRD and DESIGN_SPEC exist
- Define scope, goals, success metrics, constraints
- For CRITICAL gaps (tech stack, security, performance), MUST ask

**Step 2: Architecture Decomposition**
- Abstract modules from PRD feature tree
- Define module responsibilities, inputs/outputs, dependencies
- Identify cross-cutting concerns (auth, logging, monitoring)

**Step 3: System & Data Design**
- Design layered architecture (client/service/data/infrastructure)
- Map data flows and state changes per feature/page
- Define interface types, sync/async mechanisms

**Step 4: Technology Selection**
- Provide tech stack (frontend/backend/data/infrastructure)
- Explain rationale and alternatives
- Define performance, stability, security metrics

**Step 5: Development Guidance (NEW - Developer-Focused)**
- Define code structure and organization
- Create implementation roadmap (module development order)
- Document development workflow (branching, testing, deployment)
- Provide developer checklist and getting started guide

**Step 6: Output ARCHITECT Document**
- Output comprehensive document (architecture + implementation)
- Save to `.agent/superpowers/plan/change/{feature}/ARCHITECT.md`

## Key Principles

- **Critical decisions CANNOT use assumptions** - Tech stack, security, performance MUST be confirmed
- **Never assume interface behavior or business rules** - gaps must be questioned
- **Never provide "patch-only" solutions** - must provide global structure
- **ARCHITECT serves both architects and developers** - must be actionable for implementation
- **Developer-first implementation guidance** - clear code structure, workflow, roadmap

## ARCHITECT Document Structure (13 Sections)

**Part 1: Architecture Design (Sections 1-9)**
- Overview, Principles, Views, Data Model, Interfaces, Features, C4 Model, Technology, NFRs, ADRs

**Part 2: Development Guidance (Sections 10-13)**
- **NEW: Developer Implementation Guide** - Code structure, setup, workflow
- **NEW: Module Implementation Roadmap** - What to develop, in what order
- **NEW: Developer Checklist** - Getting started, validation, handoff

See `./architect-template.md` for complete template.

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Design without PRD/DESIGN_SPEC | Validate inputs exist first |
| Use assumptions for critical decisions | Critical decisions MUST be confirmed |
| Skip implementation guidance | Developers need clear code structure and workflow |
| Architecture without development order | Provide implementation roadmap |
| Technology choices without rationale | Explain constraints, rationale, alternatives |

## Red Flags - Stop and Clarify

- "Don't need PRD/DESIGN_SPEC, just give architecture"
- "Just give tech stack, don't need module breakdown"
- "We can assume standard requirements"
- "Architecture is enough, developers will figure it out"

**All of these mean: Stop. Return to clarification.**

## Workflow Integration

```
Phase 1: Requirements → product-manager-expert → PRD
Phase 2: Design → design-expert → DESIGN_SPEC
Phase 3: Architecture → architect-expert → ARCHITECT (architecture + development guide)
Phase 4: Planning → writing-plans → Implementation plan
Phase 5: Execution → subagent-driven-development → Working feature
```

**Shared folder:**
```
.agent/superpowers/plan/change/{feature}/
├── PRD.md            # Requirements source of truth
├── DESIGN_SPEC.md    # Design implementation of PRD
├── ARCHITECT.md      # System architecture + development guide
└── CHANGELOG.md      # Track changes
```

## Rationalization Counter-Arguments

| Rationalization | Reality |
|-----------------|---------|
| "Just architecture is enough" | Developers need implementation guidance. One document serves both. |
| "Developers will figure it out" | Ambiguity delays implementation. Clear guidance prevents rework. |
| "Implementation details are for writing-plans" | ARCHITECT provides high-level guidance; writing-plans provides task breakdown. |
