# Product Management Methods Reference

Quick reference for all methods used in product management workflow.

---

## 5W1H Analysis

Use for requirement clarification and problem definition.

| Question | Purpose | Output |
|----------|---------|--------|
| **What** | What is the problem? What are we building? | Problem statement, feature scope |
| **Why** | Why is this important? What's the value? | Business case, success metrics |
| **Who** | Who is it for? Who will use it? | User personas, target audience |
| **Where** | Where will it be used? What context? | Use scenarios, environment |
| **When** | When is it needed? What's the timeline? | Time constraints, milestones |
| **How** | How will it be implemented? | Technical approach, resources |

**Example:**
- **What:** User authentication system
- **Why:** Reduce support costs by 40%, improve security
- **Who:** 10,000 end users, 50 admins
- **Where:** Web and mobile apps
- **When:** MVP in 8 weeks, full release in 12 weeks
- **How:** OAuth 2.0, JWT tokens, role-based access

---

## 5 Why Analysis

Use for root cause analysis and uncovering real problems.

Ask "Why?" five times to get to the root cause.

**Example:**

**Problem:** Users are abandoning the signup flow

1. **Why?** → Form takes too long to complete
2. **Why?** → Too many required fields
3. **Why?** → We're collecting data we don't need yet
4. **Why?** → Marketing wants it for segmentation
5. **Why?** → They're not sure what data they actually need

**Root Cause:** Unclear data requirements from marketing

**Solution:** Simplify signup to essentials, collect additional data progressively

---

## MoSCoW Prioritization

Use for categorizing requirements by priority.

| Priority | Definition | Decision Criteria | Example |
|----------|------------|-------------------|---------|
| **Must Have** | Critical for launch. Without it, product fails. | Core value, legal requirement, blocks users | Login, core search, payment |
| **Should Have** | Important but can be deferred to next release. | High value, workarounds exist | Favorites, history, filters |
| **Could Have** | Nice to have if time/resources permit. | Low hanging fruit, delight features | Themes, sharing, export |
| **Won't Have** | Explicitly out of scope for this release. | Not aligned with current goals | Social features, advanced analytics |

**Usage Rules:**
- Must Have = ~60% of effort
- Should Have = ~30% of effort
- Could Have = ~10% of effort
- Won't Have = Document why, not "maybe later"

---

## ICE Scoring

Use for quantifying feature priority when prioritization is complex.

**ICE Score = (Impact × Confidence) / Effort**

| Component | Scale | Description |
|-----------|-------|-------------|
| **Impact** | 1-10 | How much value does this deliver? (10 = massive impact) |
| **Confidence** | 1-10 | How sure are we? (10 = certain, 5 = 50% sure, 1 = guess) |
| **Effort** | 1-10 | How much work? (1 = trivial, 10 = major project) |

**Example:**

| Feature | Impact | Confidence | Effort | ICE Score | Priority |
|---------|--------|------------|--------|-----------|----------|
| User search | 8 | 9 | 3 | 24 | 1st |
| Dark mode | 4 | 8 | 2 | 16 | 3rd |
| Export to PDF | 6 | 5 | 5 | 6 | 5th |
| Password reset | 9 | 10 | 4 | 22.5 | 2nd |

---

## User Persona Template

Use for creating detailed user personas.

```markdown
### [Persona Name]

**Demographics:**
- Age: [range]
- Location: [region/city]
- Occupation: [job title]
- Income: [range]
- Tech proficiency: [low/medium/high]

**Behaviors:**
- Goals: [what they want to achieve]
- Pain points: [what frustrates them]
- Motivations: [what drives them]
- Fears/concerns: [what worries them]

**Context:**
- How they currently solve the problem:
- When they use the product:
- Where they use the product:
- Device preferences:

**Quote:**
> "[Direct quote representing their mindset]"

**Scenarios:**
- Scenario 1: [describe typical situation]
- Scenario 2: [describe edge case]
```

---

## Acceptance Criteria Template

Use for writing verifiable acceptance criteria.

```markdown
### [Feature Name] Acceptance Criteria

**Feature Description:** [One sentence explaining what this does]

**Preconditions:**
- [Condition 1]
- [Condition 2]

**Acceptance Scenarios:**

| Step | Action | Expected Result |
|------|--------|-----------------|
| 1 | [User action] | [System response] |
| 2 | [User action] | [System response] |
| 3 | [User action] | [System response] |

**Boundary Conditions:**
- [Edge case 1 and expected behavior]
- [Edge case 2 and expected behavior]

**Performance Metrics:**
- Response time < X seconds
- Success rate > X%
- Concurrent users support: X

**Negative Cases:**
- [Invalid input and error handling]
- [Failure scenario and recovery]
```

---

## Risk Register Template

Use for documenting and tracking risks.

| Risk | Impact | Probability | Severity | Mitigation Strategy | Owner | Status |
|------|--------|-------------|----------|---------------------|-------|--------|
| [Risk description] | High/Med/Low | High/Med/Low | Critical/High/Med/Low | [How to prevent/resolve] | [Who owns] | Open/Closed |

**Severity = Impact × Probability**

**Severity Levels:**
- **Critical:** Blocks launch, must resolve immediately
- **High:** Major impact, resolve before release
- **Medium:** Moderate impact, resolve if possible
- **Low:** Minor impact, monitor

---

## Competitor Analysis Framework

Use for structured competitive analysis.

| Dimension | Questions to Ask | Output |
|-----------|------------------|--------|
| **Positioning** | What market do they target? Who is their ideal customer? | Target segment, value proposition |
| **Features** | What features do they offer? What's missing? | Feature gaps, opportunities |
| **Pricing** | How do they price? What's their model? | Pricing strategy, differentiation |
| **Strengths** | What do they do well? What are they known for? | Competitive advantages |
| **Weaknesses** | What do users complain about? What's broken? | Opportunities to exploit |
| **Differentiation** | What can we do differently? Better? | Unique selling points |

---

## Market Sizing Framework

Use for estimating market opportunity.

**TAM-SAM-SOM Model:**

- **TAM (Total Addressable Market):** Total market demand for product/service
- **SAM (Serviceable Addressable Market):** Segment of TAM within reach
- **SOM (Serviceable Obtainable Market):** Portion of SAM you can capture

**Calculation:**
```
TAM = [Total potential customers] × [Annual spend per customer]
SAM = TAM × [Geographic/service area reach %]
SOM = SAM × [Realistic market share %]
```

**Example:**
- TAM: 1M companies × $10K/year = $10B
- SAM: $10B × 10% (US only) = $1B
- SOM: $1B × 5% (year 1) = $50M

---

## Success Metrics (SMART Goals)

Use for defining measurable success criteria.

| Metric | Current | Target | Timeframe | How to Measure |
|--------|---------|--------|-----------|----------------|
| [Metric name] | [Baseline] | [Goal] | [Date] | [Data source/calculation] |

**SMART Criteria:**
- **S**pecific: Clear and unambiguous
- **M**easurable: Quantifiable
- **A**chievable: Realistic given constraints
- **R**elevant: Aligned with business goals
- **T**ime-bound: Has deadline

**Example Metrics:**
- User acquisition: 10K users by end of Q2
- Retention: 40% DAU/MAU ratio by month 3
- Revenue: $100K MRR by end of year
- NPS: 50+ score after 6 months
