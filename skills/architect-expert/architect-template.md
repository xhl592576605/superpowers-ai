# ARCHITECT Markdown Template

Use this template when generating system architecture documents.

**This template serves DUAL purposes:**
1. **Architecture Design** (Part 1) - For architects: system structure, tech stack, design decisions
2. **Development Guidance** (Part 2) - For developers: how to implement, what to develop, in what order

Copy this structure and fill in all sections. Do not skip any sections.

**IMPORTANT:** This template is in English, but actual generated documents should be in **Chinese (Simplified)** per user requirements.

---

## Modern Architecture Documentation Best Practices (2024-2025)

Based on industry standards from arc42, Microsoft, Google, and modern architecture practices:

- **Living Document**: ARCHITECT evolves with development, not static
- **Developer-First**: Must be immediately actionable for implementation
- **Diagrams + Text**: Hybrid approach for clarity (C4 Model + textual explanations)
- **Decision-Focused**: Document rationale, not just decisions (ADRs)
- **Audience-Specific**: Different sections for architects vs developers
- **Version Controlled**: Track all architectural changes over time

---

```markdown
# System Architecture Document (ARCHITECT)

> **Feature/Module:** {feature name}
> **Path:** `.agent/superpowers/plan/change/{feature}/ARCHITECT.md` (use English for {feature})
> **PRD:** `.agent/superpowers/plan/change/{feature}/PRD.md`
> **DESIGN_SPEC:** `.agent/superpowers/plan/change/{feature}/DESIGN_SPEC.md`
> **Status:** Draft | In Review | Approved | Deprecated
> **Owner:** {Architect}
> **Last Updated:** YYYY-MM-DD

---

## 📋 Table of Contents

**Part 1: Architecture Design (For Architects)**
- [1. Architecture Overview](#1-architecture-overview)
- [2. Architecture Principles](#2-architecture-principles)
- [3. Architecture Views](#3-architecture-views)
- [4. Core Data Models](#4-core-data-models)
- [5. Interfaces & Integration](#5-interfaces--integration)
- [6. Feature Architecture](#6-feature-architecture)
- [7. C4 Model](#7-c4-model)
- [8. Technology Stack](#8-technology-stack)
- [9. Non-Functional Requirements](#9-non-functional-requirements)

**Part 2: Development Guidance (For Developers)**
- [10. Developer Implementation Guide](#10-developer-implementation-guide) ⭐ **START HERE**
- [11. Module Implementation Roadmap](#11-module-implementation-roadmap)
- [12. Development Workflow](#12-development-workflow)
- [13. Developer Checklist](#13-developer-checklist)

**Appendix**
- [14. Architecture Decision Records (ADRs)](#14-architecture-decision-records-adrs)
- [15. Assumptions & Validation](#15-assumptions--validation)
- [16. Change Log](#16-change-log)

---

# PART 1: ARCHITECTURE DESIGN

---

## 1. Architecture Overview

### 1.1 Goals and Scope

- **Feature name:** {name}
- **Core objectives:** {what we want to achieve}
- **Scope boundaries:** {IN vs OUT}
- **Out of scope:** {explicitly NOT doing this iteration}

### 1.2 Architectural Constraints

> **Reference:** [Microsoft NFR Capture Guide](https://microsoft.github.io/code-with-engineering-playbook/design/design-patterns/non-functional-requirements-capture-guide/)

#### Technical Constraints
**Must Use:**
- Required technologies: [e.g., Node.js 18+, PostgreSQL 14+]
- Existing systems: [must integrate with X]
- Platform: [AWS us-east-1]

**Must Not Use:**
- Forbidden: [e.g., No proprietary databases]
- Prohibited patterns: [No synchronous in event loop]

#### Organizational Constraints
- **Team skills:** [e.g., Team knows React, Node.js]
- **Team size:** [2 frontend, 2 backend, 1 DevOps]
- **Process:** [Agile/Scrum, CI/CD required]

#### Time & Budget
- **Hard deadline:** [MVP by YYYY-MM-DD]
- **Budget:** [Monthly limit: $X]

### 1.3 Success Metrics

| Metric | Current | Target | Timeframe | How to Measure |
|--------|---------|--------|-----------|----------------|
| Performance | {baseline} | {goal} | {date} | {method} |
| Availability | {baseline} | {goal} | {date} | {method} |

---

## 2. Architecture Principles

### 2.1 Core Principles

1. **Principle 1:** [e.g., "Simplicity over cleverness"]
   - Rationale: {why this matters}
   - Trade-off: {what we sacrifice}

2. **Principle 2:** [description]

### 2.2 Quality Attribute Scenarios

> Based on [Quality Attribute Scenarios](https://bool.dev/blog/detail/architecture-documentation-best-practice)

| Attribute | Stimulus | Environment | Response | Measure |
|-----------|----------|-------------|----------|---------|
| Performance | 100 concurrent users | Normal | Load page < 2s | p95 < 2000ms |
| Availability | 24/7 access | Normal | 99.9% uptime | < 8.76h/year |
| Scalability | 10x user growth | Normal | Scale horizontally | Add nodes w/o code change |
| Security | SQL injection attempt | Runtime | Block request | 0% success rate |

### 2.3 Quality Priority Matrix

| Attribute | Priority | Rationale |
|-----------|----------|-----------|
| Performance | P0 | Direct user impact |
| Security | P0 | Regulatory requirement |
| Availability | P0 | Business continuity |
| Scalability | P1 | Growth expectation |
| Maintainability | P1 | Team velocity |

---

## 3. Architecture Views

> **Reference:** [arc42](https://arc42.org/overview) | [C4 Model](https://c4model.com/)

### 3.1 Logical View (Static Structure)

**Purpose:** Static decomposition into modules/components

**Module Inventory:**

| Module | Responsibilities | Key Abstractions | Interfaces |
|--------|-----------------|------------------|------------|
| Module A | {what it does} | {core concepts} | {APIs} |
| Module B | | | |

**Module Relationships:**
```
Module A ──→ Module B ──→ Module C
  ↑         ↓
  └─────────┘
```

### 3.2 Process View (Runtime Behavior)

**Purpose:** Dynamic behavior and interactions

**Key Runtime Flows:**
- **Main flow:** [step 1 → step 2 → step 3]
- **Exception handling:** [error recovery]
- **Concurrency model:** [async/event-driven]

**Process Diagram:**
```
[Actor] ──→ [Service A] ──→ [Service B] ──→ [Database]
              ↓               ↑
         [Event Bus] ────────────
```

### 3.3 Development View (Code Structure)

**Purpose:** Organization from development perspective

**Layer Structure:**
```
┌─────────────────────────────────┐
│     Presentation Layer          │
│   (Web / Mobile / Desktop)      │
└─────────────────────────────────┘
              ↓
┌─────────────────────────────────┐
│      Application Layer          │
│   (Business Logic / API)        │
└─────────────────────────────────┘
              ↓
┌─────────────────────────────────┐
│        Domain Layer             │
│   (Core Business Models)        │
└─────────────────────────────────┘
              ↓
┌─────────────────────────────────┐
│    Infrastructure Layer         │
│  (Data Access / Integration)    │
└─────────────────────────────────┘
```

**Module Dependencies:**

| Module | Depends On | Dependency Type |
|--------|------------|-----------------|
| Frontend | API | Runtime |
| API | Domain | Compile |
| Domain | Data Access | Compile |

### 3.4 Physical View (Deployment)

**Deployment Topology:**
```
┌─────────────────────────────────┐
│        Load Balancer             │
└──────────┬──────────────────────┘
           │
     ┌─────┴─────┐
     ↓           ↓
┌─────────┐ ┌─────────┐
│ Node 1  │ │ Node 2  │
└─────────┘ └─────────┘
     ↓           ↓
┌──────────────────────────┐
│   Database Cluster       │
│  Primary + 2 Replicas    │
└──────────────────────────┘
```

---

## 4. Core Data Models

### 4.1 Key Entities

| Entity | Core Fields | Relationships | Lifecycle |
|--------|-------------|----------------|-----------|
| Entity A | {fields} | {relations} | {creation→deletion} |
| Entity B | | | |

### 4.2 Data Flow (by Feature)

**Feature: {Feature name}**
- **Input:** {data entering the system}
- **Processing:** {transformation logic}
- **Output:** {data leaving the system}
- **State changes:** {before → after}

### 4.3 State Management

- **State definition:** {what state represents}
- **Transition rules:** {when state changes}
- **Consistency:** {how we ensure correctness}
- **Transaction boundaries:** {atomic operations}

---

## 5. Interfaces & Integration

### 5.1 Internal Interfaces

| Interface | Provider | Consumer | Protocol | Sync/Async |
|-----------|----------|----------|----------|------------|
| {name} | {who provides} | {who uses} | {HTTP/gRPC} | {sync/async} |

### 5.2 External Systems

| System | Purpose | Integration Method | Failure Handling |
|--------|---------|-------------------|------------------|
| {name} | {why we need it} | {REST/SOAP} | {retry/circuit breaker} |

### 5.3 Sync/Async Strategy

- **Sync scenarios:** [when to wait for response]
- **Async scenarios:** [when to use events/messaging]
- **Retry strategy:** [exponential backoff policy]
- **Idempotency:** [how we ensure safe retries]

---

## 6. Feature Architecture

> Map directly to PRD feature list and DESIGN_SPEC page list

### 6.1 {Feature/Page Name}

**Goals and Scope**
- Feature description: {what it does}
- Scope boundaries: {IN vs OUT}

**Entry and Trigger**
- User entry points: [where users start]
- Trigger conditions: [when feature activates]
- Prerequisites: [what must exist first]

**Key Flows**
- **Main flow:** [happy path]
- **Exception flows:** [error handling]
- **Boundary conditions:** [edge cases]

**Key Data**
- **Input:** {data required}
- **Output:** {data produced}
- **State changes:** {side effects}

**Involved Components**
- **Frontend:** {components}
- **Backend:** {services/endpoints}
- **Data:** {models/tables}

**Interfaces & Dependencies**
- **Internal APIs:** {service calls}
- **External dependencies:** {third-party calls}
- **Dependency order:** {what must be built first}

**Security**
- **Access control:** {who can access}
- **Data permissions:** {what they can see/do}

**Performance**
- **Requirements:** {response time targets}
- **Capacity limits:** {max users/data}
- **Boundary handling:** {overflow behavior}

---

## 7. C4 Model

> **Reference:** [C4 Model](https://c4model.com/) | [C4 Diagrams Guide](https://timajwilliams.github.io/2024-11-30/c4-diagrams)

### 7.1 System Context (C1) - Big Picture

**Purpose:** System scope and external interactions

**Context Diagram:**
```
┌─────────────────────────────────────────┐
│            {System Name}                │
└──────────┬──────────────┬───────────────┘
           │              │
    ┌──────▼──────┐  ┌────▼────────┐
    │   User A    │  │ External    │
    │  (Web App)  │  │ System X    │
    └─────────────┘  │ (Payment)   │
                     └─────────────┘
```

**External Actors:**

| Actor | Type | Role | Interaction |
|-------|------|------|-------------|
| End User | Person | Primary user | Web/mobile UI |
| Payment Gateway | System | External service | Process payments |

### 7.2 Container View (C2) - Application Level

**Purpose:** High-level technology choices and containers

**Container Diagram:**
```
┌─────────────────────────────────────────┐
│           {User}                        │
└─────────────────────────────────────────┘
              │
              ▼
┌─────────────────────────────────────────┐
│    Single-Page Application (React)      │
└─────────────────────────────────────────┘
              │
    ┌─────────┴─────────┐
    ▼                   ▼
┌────────────┐  ┌────────────┐
│  API App   │  │  Database  │
│ (Node.js)  │  │ (PostgreSQL)│
└────────────┘  └────────────┘
```

**Container Inventory:**

| Container | Technology | Responsibilities | Notes |
|-----------|------------|-------------------|-------|
| Web App | React | User interface | SPA |
| API Server | Node.js/Express | Business logic | REST API |
| Database | PostgreSQL | Data persistence | Primary store |
| Cache | Redis | Session caching | Optional |

### 7.3 Component View (C3) - Internal Structure

**Purpose:** Internal structure of containers

**Component Diagram (API Server):**
```
┌─────────────────────────────────────────┐
│         API Application                 │
│                                         │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐ │
│  │ API     │  │Controller│  │ Service │ │
│  │ Gateway─┼─▶│ Layer   ─┼─▶│ Layer   │ │
│  └─────────┘  └─────────┘  └─────────┘ │
│                            │            │
│                   ┌────────┴────────┐  │
│                   ▼                 ▼  │
│              ┌─────────┐    ┌──────────┐│
│              │Repository│   │Domain    ││
│              │ Layer   │    │Model     ││
│              └─────────┘    └──────────┘│
└─────────────────────────────────────────┘
```

**Component Inventory:**

| Component | Responsibility | Technology | Notes |
|-----------|----------------|------------|-------|
| API Gateway | Request routing, auth | Express middleware | |
| Controllers | HTTP request handling | Express Router | |
| Services | Business logic | JavaScript/TypeScript | Core |
| Repositories | Data access | Sequelize/TypeORM | DB access |

### 7.4 Code View (C4) - Detailed Design

**Purpose:** Detailed design (use sparingly)

**When to Use:**
- Complex algorithms (flowcharts/pseudocode)
- Database schemas (ER diagrams)
- API specifications (OpenAPI/Swagger)

**Example: Database Schema:**
```
┌─────────────┐       ┌─────────────┐
│   Users     │       │   Orders    │
│─────────────│  1  N │─────────────│
│ PK id       │──────▶│ PK id       │
│    email    │       │ FK user_id  │
│    password │       │    total    │
└─────────────┘       │    status   │
                      └─────────────┘
```

### 7.5 Key Data Flows

**Data Flow: {Flow name}**
- **Origin:** {where it starts}
- **Destination:** {where it ends}
- **Containers:** {all participants}
- **Steps:** {step-by-step}
- **Transformations:** {how data changes}

**Example: User Registration**
```
[Web App] ──POST /register──▶ [API Server]
                                   │
                                   ▼
                            [Validate Input]
                                   │
                                   ▼
                            [Check Email]
                              │     │
                    exists │     │ unique
                          ▼       ▼
                    Return error  [Create User]
                                    │
                                    ▼
                             [Save to DB]
                                    │
                                    ▼
                             Return Success
```

---

## 8. Technology Stack

### 8.1 Frontend

| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
| {framework} | {version} | {why} | {what we considered} |

### 8.2 Backend

| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
| {language/runtime} | {version} | {why} | {what we considered} |

### 8.3 Data & Cache

| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
| {database} | {version} | {why} | {what we considered} |

### 8.4 Infrastructure

| Technology | Version | Purpose | Alternatives |
|------------|---------|---------|--------------|
| {cloud/platform} | {version} | {why} | {what we considered} |

### 8.5 Technology Selection Rationale

- **Selection rationale:** {why these choices}
- **Alternative considerations:** {what else we looked at}
- **Risk assessment:** {potential issues}

### 8.6 CRITICAL: Required Commands ⚠️

> **This section defines MANDATORY commands and versions.**
> **Implementation team MUST follow exactly - NO deprecated commands.**

**Frontend Commands:**
| Task | Required Command | Deprecated/Prohibited | Reference |
|------|------------------|---------------------|-----------|
| Project init | `npx create-react-app@latest` | `create-react-app` (global) | [docs] |
| Dev server | `npm run dev` | - | - |

**Backend Commands:**
| Task | Required Command | Deprecated/Prohibited | Reference |
|------|------------------|---------------------|-----------|
| Project init | `npm init -y` | - | - |
| API start | `node server.js` | - | - |

**Version Requirements:**
| Dependency | Min Version | Recommended | Why |
|------------|-------------|-------------|-----|
| Node.js | 18.x | 20.x LTS | Security, ESM support |
| PostgreSQL | 14.x | 16.x | Performance features |

---

## 9. Non-Functional Requirements

### 9.1 Performance

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Response time (p95) | < X seconds | APM monitoring |
| Throughput | X req/sec | Load testing |
| Concurrency | X users | Stress testing |

### 9.2 Security

- **Authentication:** {method, e.g., OAuth 2.0, JWT}
- **Authorization:** {model, e.g., RBAC}
- **Data encryption:** {at rest: AES-256, in transit: TLS 1.3}
- **Audit logs:** {what we log, retention policy}

### 9.3 Availability

- **Uptime target:** {e.g., 99.9% = < 8.76h/year}
- **Disaster recovery:** {backup strategy, RTO, RPO}
- **Degradation plan:** {graceful degradation}
- **Recovery mechanism:** {how we restore service}

### 9.4 Monitoring & Alerting

- **Monitoring metrics:** {CPU, memory, latency, errors}
- **Alerting rules:** {when to page, when to email}
- **Logging strategy:** {structured logs, log levels, aggregation}

---

# PART 2: DEVELOPMENT GUIDANCE ⭐

> **DEVELOPERS: Start here for implementation guidance**

---

## 10. Developer Implementation Guide ⭐ START HERE

### 10.1 Quick Start

**This section gets you from zero to productive in 15 minutes.**

**Prerequisites:**
- [ ] Node.js 18+ installed (`node --version`)
- [ ] PostgreSQL 14+ running (`psql --version`)
- [ ] Git configured (`git config --list`)

**Clone and Setup:**
```bash
# 1. Clone repository
git clone {repository-url}
cd {project-name}

# 2. Install dependencies
npm install

# 3. Configure environment
cp .env.example .env
# Edit .env with your settings

# 4. Run database migrations
npm run db:migrate

# 5. Start development server
npm run dev
```

**Verify Setup:**
- [ ] Server starts without errors
- [ ] Can access `http://localhost:3000`
- [ ] Database connection successful
- [ ] Run health check: `npm run test:smoke`

### 10.2 Code Structure

**Project Layout:**
```
project-root/
├── src/
│   ├── frontend/           # Presentation layer
│   │   ├── components/     # Reusable UI components
│   │   ├── pages/          # Page components
│   │   ├── hooks/          # Custom React hooks
│   │   ├── services/       # API clients
│   │   └── utils/          # Helpers
│   ├── backend/            # Application layer
│   │   ├── controllers/    # HTTP handlers
│   │   ├── services/       # Business logic
│   │   ├── repositories/   # Data access
│   │   ├── models/         # Domain models
│   │   ├── middleware/     # Express middleware
│   │   └── routes/         # Route definitions
│   ├── shared/             # Shared code
│   │   ├── types/          # TypeScript types
│   │   ├── constants/      # App constants
│   │   └── validators/     # Input validation
│   └── infrastructure/     # Infrastructure layer
│       ├── database/       # DB connection, migrations
│       ├── cache/          # Cache clients
│       └── config/         # App configuration
├── tests/                  # Test files
├── docs/                   # Additional documentation
└── scripts/                # Build/deployment scripts
```

**Where to Put What:**
| What You're Building | Put It Here | Why |
|---------------------|-------------|-----|
| UI component | `src/frontend/components/` | Reusable presentation |
| Page/screen | `src/frontend/pages/` | Route components |
| API endpoint | `src/backend/controllers/` | HTTP handling |
| Business logic | `src/backend/services/` | Core rules |
| Database query | `src/backend/repositories/` | Data access |
| Domain model | `src/backend/models/` | Business entity |
| Type definition | `src/shared/types/` | Shared types |

### 10.3 Development Environment

**Required Tools:**
- **IDE:** VS Code with extensions:
  - ESLint
  - Prettier
  - GitLens
  - Thunder Client (for API testing)

**Environment Variables:**
```bash
# .env (copy from .env.example)
NODE_ENV=development
PORT=3000
DATABASE_URL=postgresql://user:pass@localhost:5432/dbname
JWT_SECRET=your-secret-key
API_KEY=your-api-key
```

**Common Commands:**
```bash
# Development
npm run dev          # Start dev server with hot reload
npm run build        # Build for production
npm run preview      # Preview production build

# Testing
npm run test         # Run all tests
npm run test:watch   # Watch mode
npm run test:coverage # Coverage report

# Database
npm run db:migrate   # Run migrations
npm run db:seed      # Seed database
npm run db:reset     # Reset database

# Linting
npm run lint         # Check code style
npm run lint:fix     # Fix auto-fixable issues
npm run format       # Format code
```

### 10.4 Coding Standards

**Code Style:**
- Use ESLint configuration (`.eslintrc.js`)
- Use Prettier for formatting (`.prettierrc`)
- Follow existing patterns in codebase

**Naming Conventions:**
- **Files:** `kebab-case` (e.g., `user-service.ts`)
- **Components:** `PascalCase` (e.g., `UserProfile.tsx`)
- **Functions/variables:** `camelCase` (e.g., `getUserById`)
- **Constants:** `SCREAMING_SNAKE_CASE` (e.g., `MAX_RETRIES`)
- **Types/interfaces:** `PascalCase` (e.g., `User`, `UserService`)

**Import Order:**
```typescript
// 1. External dependencies
import express from 'express';
import React from 'react';

// 2. Internal modules
import { UserService } from '../services';
import { UserProfile } from '../components';

// 3. Types
import type { User } from '../types';

// 4. Relative imports
import { logger } from './utils';
```

### 10.5 Testing Guidelines

**Test Structure:**
```
tests/
├── unit/              # Unit tests
│   ├── services/
│   └── utils/
├── integration/       # Integration tests
│   ├── api/
│   └── database/
└── e2e/              # End-to-end tests
    └── user-flows/
```

**Writing Tests:**
```typescript
// Example: Unit test
describe('UserService', () => {
  it('should create user with valid data', async () => {
    const user = await userService.create({
      email: 'test@example.com',
      password: 'SecurePass123!',
    });
    expect(user).toHaveProperty('id');
    expect(user.email).toBe('test@example.com');
  });
});
```

**When to Test:**
- **Unit tests:** Business logic, utilities, services
- **Integration tests:** API endpoints, database operations
- **E2E tests:** Critical user journeys

### 10.6 Git Workflow

**Branch Naming:**
- `feature/` - New features (`feature/user-authentication`)
- `bugfix/` - Bug fixes (`bugfix/login-error`)
- `hotfix/` - Urgent production fixes (`hotfix/security-patch`)
- `refactor/` - Code refactoring (`refactor/user-service`)

**Commit Messages:**
```
type(scope): description

Types:
- feat: New feature
- fix: Bug fix
- docs: Documentation only
- style: Code style changes (formatting)
- refactor: Code refactoring
- test: Adding or updating tests
- chore: Build process or auxiliary tool changes

Example: feat(auth): add OAuth2 login support
```

**PR Guidelines:**
1. Create feature branch from `main`
2. Make commits with clear messages
3. Ensure tests pass (`npm run test`)
4. Ensure linting passes (`npm run lint`)
5. Create PR with description of changes
6. Request review from team lead
7. Address feedback
8. Merge after approval

---

## 11. Module Implementation Roadmap

> **What to develop, in what order, with dependencies**

### 11.1 Implementation Phases

**Phase 1: Foundation (Week 1-2)**
*Goal: Basic infrastructure and core models*

| Module | Priority | Dependencies | Effort | Owner |
|--------|----------|--------------|--------|-------|
| Database schema | P0 | None | 3 days | DBA |
| User model | P0 | Database schema | 2 days | Backend |
| Auth service | P0 | User model | 3 days | Backend |
| Basic API | P0 | Auth service | 2 days | Backend |

**Deliverables:**
- [ ] Database migrations run successfully
- [ ] User can register and login
- [ ] API returns valid JWT tokens

**Phase 2: Core Features (Week 3-4)**
*Goal: Primary user workflows*

| Module | Priority | Dependencies | Effort | Owner |
|--------|----------|--------------|--------|-------|
| User profile | P0 | Phase 1 | 2 days | Frontend |
| Dashboard | P0 | User profile | 3 days | Frontend |
| CRUD operations | P0 | Phase 1 | 4 days | Backend |
| Search | P1 | CRUD operations | 2 days | Backend |

**Deliverables:**
- [ ] Users can view and edit profiles
- [ ] Dashboard displays key information
- [ ] CRUD operations work for all entities

**Phase 3: Advanced Features (Week 5-6)**
*Goal: Enhanced functionality*

| Module | Priority | Dependencies | Effort | Owner |
|--------|----------|--------------|--------|-------|
| Notifications | P1 | Phase 2 | 3 days | Backend |
| File upload | P1 | Phase 2 | 2 days | Backend |
| Reporting | P2 | Phase 2 | 4 days | Backend |
| Admin panel | P2 | Phase 2 | 3 days | Frontend |

**Deliverables:**
- [ ] Users receive notifications
- [ ] File upload/download works
- [ ] Basic reporting available
- [ ] Admin can manage users

### 11.2 Dependency Graph

```
                    [Database Schema]
                            │
                            ▼
                         [User Model]
                            │
                            ▼
                       [Auth Service]
                            │
            ┌───────────────┼───────────────┐
            ▼               ▼               ▼
      [Basic API]    [User Profile]   [CRUD Ops]
            │               │               │
            └───────────────┼───────────────┘
                            ▼
                       [Dashboard]
                            │
            ┌───────────────┼───────────────┐
            ▼               ▼               ▼
    [Notifications]  [File Upload]   [Reporting]
```

### 11.3 Parallel Development Opportunities

**Can be developed in parallel:**
- User profile (Frontend) || CRUD operations (Backend)
- Dashboard (Frontend) || Search (Backend)
- Notifications || File upload

**Must be sequential:**
- Auth Service → Basic API
- Database Schema → User Model
- User Model → Auth Service

### 11.4 Module Details

**Module: User Authentication**

**What to build:**
- User registration endpoint
- User login endpoint
- JWT token generation/validation
- Password hashing (bcrypt)
- Password reset flow

**Files to create:**
```
src/backend/controllers/auth-controller.ts
src/backend/services/auth-service.ts
src/backend/repositories/user-repository.ts
src/backend/models/user.ts
src/backend/routes/auth-routes.ts
src/backend/middleware/auth-middleware.ts
```

**API Endpoints:**
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `POST /api/auth/logout` - Logout user
- `POST /api/auth/refresh` - Refresh JWT token
- `POST /api/auth/reset-password` - Reset password

**Testing:**
```bash
# Unit tests
npm test -- auth-service.test.ts

# Integration tests
npm test -- auth-api.test.ts

# Manual testing
curl -X POST http://localhost:3000/api/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"SecurePass123!"}'
```

**Validation criteria:**
- [ ] Unit tests pass (80%+ coverage)
- [ ] Integration tests pass
- [ ] API returns correct HTTP status codes
- [ ] Passwords are hashed, not plaintext
- [ ] JWT tokens expire correctly

---

**Module: User Profile**

**What to build:**
- User profile page component
- Profile edit form
- Avatar upload
- Profile validation

**Files to create:**
```
src/frontend/pages/ProfilePage.tsx
src/frontend/components/ProfileForm.tsx
src/frontend/components/AvatarUpload.tsx
src/frontend/services/profile-service.ts
src/backend/controllers/profile-controller.ts
src/backend/services/profile-service.ts
```

**API Endpoints:**
- `GET /api/profile/:id` - Get user profile
- `PUT /api/profile/:id` - Update user profile
- `POST /api/profile/:id/avatar` - Upload avatar

**Testing:**
```bash
# Frontend tests
npm test -- ProfilePage.test.tsx

# E2E tests
npm test -- profile-flow.test.ts
```

**Validation criteria:**
- [ ] Component renders without errors
- [ ] Form validation works
- [ ] Avatar upload succeeds
- [ ] Profile updates persist to database

---

## 12. Development Workflow

### 12.1 Branching Strategy

**Branch Structure:**
```
main (production)
  ↑
  └── develop (integration)
        ↑
        ├── feature/user-authentication
        ├── feature/user-profile
        └── bugfix/login-error
```

**Workflow:**
1. `main` - Production-ready code (always deployable)
2. `develop` - Integration branch for next release
3. `feature/*` - Feature branches from `develop`
4. `bugfix/*` - Bug fix branches from `develop`
5. `hotfix/*` - Urgent fixes from `main`

**Process:**
```bash
# 1. Start new feature
git checkout develop
git pull origin develop
git checkout -b feature/your-feature-name

# 2. Make changes and commit
git add .
git commit -m "feat(scope): description"

# 3. Push and create PR
git push origin feature/your-feature-name
# Create PR on GitHub/GitLab

# 4. After review, merge to develop
# PR gets merged via merge commit

# 5. Delete feature branch
git branch -d feature/your-feature-name
```

### 12.2 Testing Strategy

**Testing Pyramid:**
```
        /\
       /E2E\         ← Fewest tests (critical flows)
      /------\
     /  Integration  ←  Moderate (API, database)
    /--------------\
   /    Unit Tests    ← Most tests (business logic)
  /--------------------\
```

**When to Run Tests:**
- **Unit tests:** Before committing (`git hooks`)
- **Integration tests:** Before pushing to `develop`
- **E2E tests:** Before merging to `main`

**Pre-commit Hooks:**
```json
// package.json
{
  "husky": {
    "hooks": {
      "pre-commit": "npm run lint && npm run test:unit",
      "pre-push": "npm run test:integration"
    }
  }
}
```

### 12.3 Deployment Process

**Development Deployment:**
```bash
# Deploy to development environment
git checkout develop
git pull origin develop
npm run deploy:dev
```

**Staging Deployment:**
```bash
# Deploy to staging (pre-production)
git checkout main
git pull origin main
npm run deploy:staging
```

**Production Deployment:**
```bash
# Deploy to production (requires approval)
git checkout main
git pull origin main
npm run deploy:prod
```

**Deployment Checklist:**
- [ ] All tests pass (`npm run test`)
- [ ] No linting errors (`npm run lint`)
- [ ] Database migrations prepared
- [ ] Environment variables configured
- [ ] Rollback plan documented
- [ ] Monitoring alerts configured
- [ ] Stakeholders notified

### 12.4 Rollback Plan

**If deployment fails:**
```bash
# 1. Identify broken version
git log --oneline

# 2. Revert to previous version
git revert HEAD

# 3. Push rollback
git push origin main

# 4. Verify rollback
# Check health endpoint
curl https://api.example.com/health
```

---

## 13. Developer Checklist

### 13.1 Getting Started Checklist

**Day 1: Setup (2 hours)**
- [ ] Clone repository
- [ ] Install dependencies (`npm install`)
- [ ] Configure environment (`.env`)
- [ ] Run database migrations (`npm run db:migrate`)
- [ ] Start dev server (`npm run dev`)
- [ ] Verify app loads in browser
- [ ] Run smoke tests (`npm run test:smoke`)

**Day 1-2: Understanding (4 hours)**
- [ ] Read PRD for context
- [ ] Read DESIGN_SPEC for UI requirements
- [ ] Review ARCHITECT.md (this document)
- [ ] Explore codebase structure
- [ ] Run full test suite (`npm run test`)
- [ ] Set up IDE and extensions
- [ ] Configure Git credentials

**Week 1: First Contribution**
- [ ] Pick up first task from roadmap
- [ ] Create feature branch
- [ ] Implement feature with tests
- [ ] Ensure tests pass (`npm run test`)
- [ ] Ensure linting passes (`npm run lint`)
- [ ] Create pull request
- [ ] Address review feedback
- [ ] Merge to `develop`

### 13.2 Validation Checklist

**Before Creating Pull Request:**
- [ ] Code follows style guide (`npm run lint` passes)
- [ ] All tests pass (`npm run test` passes)
- [ ] New code has unit tests (80%+ coverage)
- [ ] Integration tests added for API changes
- [ ] E2E tests added for user-facing changes
- [ ] Documentation updated (if applicable)
- [ ] Commit messages follow convention
- [ ] No console.log or debugging code left

**Before Merging to Main:**
- [ ] Reviewed by at least one team member
- [ ] All automated checks pass
- [ ] Manual testing completed
- [ ] Performance impact assessed
- [ ] Security review completed (if applicable)
- [ ] Breaking changes documented
- [ ] Migration guide provided (if needed)

### 13.3 Handoff Checklist

**When Completing a Module:**
- [ ] Code committed to `develop` branch
- [ ] Tests pass (unit, integration, E2E)
- [ ] Documentation updated
- [ ] Code review completed
- [ ] Known issues documented
- [ ] Demo recorded (for significant features)
- [ ] Handoff email sent to stakeholders

**Demo Template:**
```
Subject: Demo: {Feature Name} Complete

Hi team,

I've completed {Feature Name}. Here's what was built:

What: {Brief description}
Why: {Business value}
How: {Technical approach}

Demo: {Link to video or screenshots}

Test it: {Instructions for testing}

Known issues: {Any limitations or known bugs}

Next steps: {What's needed for full release}

Thanks,
{Your name}
```

---

# APPENDIX

---

## 14. Architecture Decision Records (ADRs)

> **Reference:** [ADR GitHub.io](https://adr.github.io/) | [Azure ADR Guide](https://learn.microsoft.com/en-us/azure/well-architected/architect-role/architecture-decision-record)

### 14.1 Decision Log

| ID | Title | Date | Status | Context | Decision | Consequences |
|----|-------|------|--------|---------|----------|-------------|
| ADR-001 | {title} | YYYY-MM-DD | Accepted | {problem} | {what we decided} | {impact} |
| ADR-002 | {title} | YYYY-MM-DD | Proposed | {problem} | {what we decided} | {impact} |

**Status Definitions:**
- **Proposed** - Under consideration
- **Accepted** - Decision made, in use
- **Rejected** - Considered but not chosen
- **Deprecated** - Previously accepted, now replaced

### 14.2 ADR Template

```markdown
# ADR-{NN}: {Title}

## Status
{Proposed | Accepted | Rejected | Deprecated}

## Context
[What is the issue?]
[What are the driving forces? Constraints?]

## Decision
[What did we decide?]

## Rationale
[Why this decision?]
[What alternatives did we consider?]

## Consequences
- **Positive:** [Benefits]
- **Negative:** [Downsides]
- **Neutral:** [What doesn't change]

## Related Decisions
- ADR-XXX: {Related decision}
```

### 14.3 Trade-off Analysis

| Decision Area | Option Chosen | Trade-off | Mitigation |
|---------------|---------------|-----------|------------|
| Database | PostgreSQL | Vertical scaling limit | Read replicas |
| Architecture | Microservices | Network latency | Service mesh |
| Communication | REST API | Polling overhead | WebSocket |

---

## 15. Assumptions & Validation

> **IMPORTANT:** This section contains NON-CRITICAL implementation details only.
>
> **Critical decisions MUST be confirmed in Sections 8-9, NOT here.**

### 15.1 Critical Decisions Status

| Decision Area | Confirmed In | Status |
|---------------|--------------|--------|
| Technology Stack | Section 8 | ✅ Confirmed |
| Integration Patterns | Section 5 | ✅ Confirmed |
| Performance Requirements | Section 9.1 | ✅ Confirmed |
| Security Requirements | Section 9.2 | ✅ Confirmed |

### 15.2 Non-Critical Assumptions

| Assumption | Context | Validation Method | Owner | Target Date |
|------------|---------|-------------------|-------|-------------|
| Logging level set to INFO | PRD unspecified | Confirm with dev team | Tech Lead | [date] |
| API uses camelCase | Following convention | Review with frontend | Architect | [date] |

---

## 16. Change Log

| Version | Date | Changes | Owner |
|---------|------|---------|-------|
| v0.1 | YYYY-MM-DD | Initial draft | {Name} |
| v0.2 | YYYY-MM-DD | Added [section]; updated [X] | {Name} |

---

# Template Usage Guidelines

## For Architects

1. **Fill all sections** in Part 1 (Architecture Design)
2. **Focus on decisions and rationale** - document WHY, not just WHAT
3. **Use diagrams** (C4 Model) for complex interactions
4. **Keep ADRs** for all significant decisions
5. **Update Part 2** (Development Guidance) based on architecture decisions

## For Developers

1. **Start with Section 10** (Developer Implementation Guide) ⭐
2. **Follow Section 11** (Module Implementation Roadmap) for build order
3. **Reference Section 8** (Technology Stack) for required commands
4. **Use Section 13** (Developer Checklist) for validation
5. **Ask questions** when assumptions need validation

## For Both

1. **Language:** Template is English, fill content in **Chinese (Simplified)**
2. **Completeness:** Do not skip sections (use TBD for unknowns)
3. **Updates:** Keep Change Log current with every revision
4. **Version Control:** Commit ARCHITECT.md with code changes
5. **Living Document:** Update as you learn and evolve

---

# Sources

- **[arc42 Overview](https://arc42.org/overview)** - Architecture documentation template
- **[C4 Model](https://c4model.com/)** - Hierarchical architecture diagrams
- **[Software Architecture Documentation Best Practices (Imaginary Cloud, 2025)](https://www.imaginarycloud.com/blog/software-architecture-documentation)** - Modern practices
- **[Software Architecture Documentation: A Comprehensive Guide (Document360, 2025)](https://document360.com/blog/software-architecture-documentation/)** - Developer-focused guide
- **[ADR GitHub.io](https://adr.github.io/)** - Architecture Decision Records
- **[Microsoft NFR Capture Guide (2024)](https://microsoft.github.io/code-with-engineering-playbook/design/design-patterns/non-functional-requirements-capture-guide/)** - Constraints documentation
- **[C4 Diagrams Guide (2024)](https://timajwilliams.github.io/2024-11-30/c4-diagrams)** - C4 best practices
