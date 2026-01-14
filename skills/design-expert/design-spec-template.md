# DESIGN_SPEC Markdown Template

Use this template when generating design specification documents.

Copy this structure and fill in all sections. Do not skip any sections.

**IMPORTANT:** This template is in English, but actual generated documents should be in **Chinese (Simplified)** per user requirements.

---

## Modern Design Spec Best Practices (2024-2025)

Based on industry standards from Figma Developer Handoff, UXPin Design Systems, and modern UX practices:

- **Living Document**: DESIGN_SPEC evolves with development
- **Developer-First**: Specs must be actionable and unambiguous
- **Design Tokens**: Use tokens for consistency and scalability
- **Component Variants**: Document all states and variants
- **Accessibility**: WCAG 2.1 AA compliance minimum
- **Figma Integration**: Link to Figma for visual reference

---

```markdown
# Design Specification (DESIGN_SPEC)

> **Feature/Module:** {feature name}
> **Path:** `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md`
> **PRD Path:** `.claude/superpowers/plan/change/{feature}/PRD.md`
> **Figma:** [Link to Figma file]
> **Status:** Draft | In Review | Approved | Deprecated
> **Owner:** {Designer}

---

## Change History

Record all significant changes. Start with v0.1.

| Version | Date | Changes | Owner |
|---------|------|---------|-------|
| v0.1 | YYYY-MM-DD | Initial draft | {Name} |
| v0.2 | YYYY-MM-DD | Added [section]; updated [X] | {Name} |

---

## 1. Project Overview

### 1.1 Basic Information
- **Feature/Module Name:** {name}
- **Target Platform:** Web / Mobile / Desktop
- **Design Objectives:** {what we want to achieve}
- **Design Preferences/Brand Tone:** {style references}

### 1.2 Design Principles
- **Core principles:** [e.g., "Clarity over density", "Progressive disclosure"]
- **Brand values:** [e.g., "Professional but approachable", "Data-first clarity"]

### 1.3 Success Metrics (from PRD)
- Metric 1: {How design supports PRD success metrics}
- Metric 2: {e.g., "Reduce task completion time by 30%"}

---

## 2. Users & Scenarios

### 2.1 Core User Personas

**Persona 1: {Name/Role}**
- **Basic characteristics:** {demographics, tech proficiency}
- **Usage scenarios:** {when/where/how they use the product}
- **Expected experience:** {what they need to feel successful}

### 2.2 Key Scenarios and Tasks

**Scenario 1: {Primary use case}**
- **User goal:** {what they're trying to accomplish}
- **Key actions:** [step 1 → step 2 → step 3]
- **Success criteria:** {how we know it worked}

### 2.3 Experience Pain Points and Opportunities
- **Pain point 1:** {current frustration} → **Opportunity:** {design solution}
- **Pain point 2:** {current frustration} → **Opportunity:** {design solution}

---

## 3. Design Research

### 3.1 Industry Trends
- **Trend 1:** {Description} → **Adoption:** [e.g., "65% of dashboards use cards"]
- **Trend 2:** {Description} → **Adoption:** [percentage/data]

### 3.2 Competitor Analysis

| Competitor | Visual Style | Layout Patterns | Interactions | Borrow | Avoid |
|-----------|--------------|-----------------|-------------|--------|-------|
| {Name} | {Description} | {Patterns} | {Description} | {What} | {What} |

### 3.3 Design Direction
- **Visual style positioning:** [e.g., "Clean, minimalist, data-focused"]
- **Interaction strategy:** [e.g., "Direct manipulation, immediate feedback"]
- **Key differentiators:** {what makes this design unique}

---

## 4. Information Architecture & Flows

### 4.1 Information Architecture
```
{Application/System}
├─ Module A
│  ├─ Page A1
│  └─ Page A2
├─ Module B
│  └─ Page B1
└─ Module C
```

### 4.2 Key User Flows

**Main Flow: {Primary task}**
1. [Entry point] →
2. [Step 1] →
3. [Step 2] →
4. [Success state]

**Exception Flow: {Error/edge case}**
1. [Trigger] →
2. [Error handling] →
3. [Recovery path]

### 4.3 Key Page Inventory

| Page Name | Main Function | Priority | Figma Link |
|-----------|---------------|----------|------------|
| Home | {Purpose} | P0 | [Link] |
| List Page | {Purpose} | P1 | [Link] |

---

## 5. Visual System

### 5.1 Color System

**Primary Colors**
| Token | Value | Usage | Figma Variable |
|-------|-------|-------|----------------|
| `--color-primary` | #000000 | Primary buttons, links | `{variable-name}` |
| `--color-primary-hover` | #1A1A1A | Hover state | `{variable-name}` |
| `--color-primary-active` | #333333 | Active state | `{variable-name}` |
| `--color-primary-disabled` | #CCCCCC | Disabled state | `{variable-name}` |

**Semantic Colors**
| Token | Value | Usage | WCAG Contrast |
|-------|-------|-------|---------------|
| `--color-success` | #10B981 | Success state | ✓ Pass (4.5:1) |
| `--color-warning` | #F59E0B | Warning state | ⚠ Warning (3.1:1) |
| `--color-error` | #EF4444 | Error state | ✓ Pass (4.5:1) |
| `--color-info` | #3B82F6 | Info notification | ✓ Pass (4.5:1) |

**Neutral Colors**
| Token | Value | Usage |
|-------|-------|-------|
| `--color-bg-primary` | #FFFFFF | Primary background |
| `--color-bg-secondary` | #F3F4F6 | Secondary background |
| `--color-bg-tertiary` | #E5E7EB | Tertiary background |
| `--color-text-primary` | #111827 | Primary text |
| `--color-text-secondary` | #6B7280 | Secondary text |
| `--color-text-tertiary` | #9CA3AF | Tertiary text |
| `--color-border` | #E5E7EB | Border/divider |

### 5.2 Typography System

**Font Family**
| Token | Font Stack | Fallback | Usage |
|-------|------------|----------|-------|
| `--font-family-base` | `{Primary}`, system-ui, sans-serif | {Fallback} | Body text |
| `--font-family-heading` | `{Display}`, sans-serif | {Fallback} | Headings |
| `--font-family-mono` | `{Mono}`, 'SF Mono', monospace | {Fallback} | Code/numbers |

**Font Size & Line Height (Type Scale)**
| Token | Size | Line Height | Usage | Figma Style |
|-------|------|-------------|-------|-------------|
| `--text-xs` | 12px | 16px (1.33) | Auxiliary notes | `{style-name}` |
| `--text-sm` | 14px | 20px (1.43) | Small labels | `{style-name}` |
| `--text-base` | 16px | 24px (1.5) | Body text | `{style-name}` |
| `--text-lg` | 18px | 28px (1.56) | Small headings | `{style-name}` |
| `--text-xl` | 20px | 28px (1.4) | Headings | `{style-name}` |
| `--text-2xl` | 24px | 32px (1.33) | Large headings | `{style-name}` |
| `--text-3xl` | 30px | 38px (1.27) | Page titles | `{style-name}` |
| `--text-4xl` | 36px | 44px (1.22) | Display titles | `{style-name}` |

**Font Weight**
| Token | Weight | Usage |
|-------|--------|-------|
| `--font-normal` | 400 | Regular text |
| `--font-medium` | 500 | Emphasized text |
| `--font-semibold` | 600 | Small headings, emphasis |
| `--font-bold` | 700 | Headings |

### 5.3 Spacing System (8px Base Grid)

| Token | Value | Usage |
|-------|-------|-------|
| `--spacing-0` | 0 | No spacing |
| `--spacing-1` | 4px | Minimal (0.5x) |
| `--spacing-2` | 8px | Small (1x base) |
| `--spacing-3` | 12px | Default (1.5x base) |
| `--spacing-4` | 16px | Medium (2x base) |
| `--spacing-5` | 20px | Large (2.5x base) |
| `--spacing-6` | 24px | XL (3x base) |
| `--spacing-8` | 32px | XXL (4x base) |
| `--spacing-10` | 40px | XXXL (5x base) |
| `--spacing-12` | 48px | Section spacing |

### 5.4 Responsive Breakpoints (Mobile-First)

| Breakpoint | Min Width | Container Max | Target Devices |
|------------|-----------|---------------|----------------|
| `--bp-mobile` | 0px | 100% | Mobile phones |
| `--bp-tablet` | 640px | 640px | Tablets, small laptops |
| `--bp-desktop` | 1024px | 1024px | Desktops |
| `--bp-wide` | 1280px | 1280px | Large screens |

### 5.5 Icons & Illustrations
- **Icon library:** [e.g., Heroicons / Lucide / Phosphor / Custom]
- **Icon sizes:** 16px, 20px, 24px, 32px, 48px
- **Illustration style:** {Description}
- **Figma components:** [Link to icon set]

### 5.6 Design Tokens (Naming Convention)

**Token Structure:** `--{category}-{property}-{variant}-{state}`

**Examples:**
- `--color-primary` (category: color, property: primary)
- `--spacing-4` (category: spacing, property: size)
- `--text-base` (category: text, property: size)
- `--button-primary-hover-bg` (category: button, property: primary, variant: hover, state: bg)

**Token Hierarchy:**
1. **Base tokens** (raw values): `--color-red-500`
2. **Semantic tokens** (business meaning): `--color-primary`
3. **Component tokens** (component-specific): `--button-primary-bg`

---

## 6. Component Specifications

### 6.1 Base Components

**Button Component**

**Variants:**
| Variant | Token | Background | Text | Border |
|---------|-------|------------|------|--------|
| Primary | `--button-primary` | `--color-primary` | `--color-bg-primary` | none |
| Secondary | `--button-secondary` | `--color-bg-secondary` | `--color-text-primary` | `--color-border` |
| Ghost | `--button-ghost` | transparent | `--color-primary` | none |
| Danger | `--button-danger` | `--color-error` | `--color-bg-primary` | none |

**States:**
| State | Background | Transform | Cursor | Transition |
|-------|------------|-----------|--------|------------|
| Default | {Variant value} | none | pointer | 150ms ease |
| Hover | 10% darker | scale(0.98) | pointer | 150ms ease |
| Active | 20% darker | scale(0.96) | pointer | 150ms ease |
| Focus | {Variant value} | none | pointer | 150ms ease |
| Disabled | `--color-bg-tertiary` | none | not-allowed | none |
| Loading | {Variant value} | none | wait | none |

**Sizes:**
| Size | Height | Padding | Font Size | Icon Size |
|------|--------|---------|-----------|-----------|
| Small | 32px | 8px 16px | `--text-sm` | 16px |
| Medium | 40px | 10px 20px | `--text-base` | 20px |
| Large | 48px | 12px 24px | `--text-lg` | 24px |

**Figma Component:** [Link]

---

**Input Component**

**States:**
| State | Border | Background | Shadow | Focus Ring |
|-------|--------|------------|--------|------------|
| Default | `--color-border` | `--color-bg-primary` | none | none |
| Focus | `--color-primary` | `--color-bg-primary` | 0 0 0 3px rgba(...) | 2px solid `--color-primary` |
| Error | `--color-error` | `--color-bg-primary` | none | none |
| Disabled | `--color-border` | `--color-bg-secondary` | none | none |

**Sizes:** Same as button

**Figma Component:** [Link]

### 6.2 Business Components

**{Component Name 1}**
- **Purpose:** {What this component does}
- **Composition:** [Base component A] + [Base component B]
- **Variants:** {List variants}
- **States:** {List states}
- **Usage scenarios:** {When to use}
- **Figma Component:** [Link]

### 6.3 Component Library Integration
- **Library:** [e.g., Ant Design / Material-UI / Tailwind / Custom]
- **Version:** {Version number}
- **Customization:** {What we customized}
- **Override strategy:** {How we override defaults}

---

## 7. Interaction Specifications

### 7.1 Feedback & Motion

**Button Click:**
- **Transform:** scale(0.98)
- **Duration:** 100ms
- **Easing:** ease-out
- **Feedback:** Visual (scale) + haptic (if mobile)

**Page Transition:**
- **Type:** Fade in/out
- **Duration:** 200ms
- **Easing:** ease-in-out

**Loading State:**
- **Type:** Spinner / Skeleton screen
- **Animation:** Linear rotation / pulse
- **Duration:** Indeterminate

**Micro-interactions:**
- **Hover:** Color shift + scale(0.98)
- **Duration:** 150ms
- **Easing:** ease-out

### 7.2 Error & Empty States

**Error State:**
- **Visual:** Red text + icon
- **Placement:** Near error location (below field)
- **Message:** {Specific error message}
- **Recovery:** {How to fix}

**Empty State:**
- **Visual:** Illustration + prompt text + CTA button
- **Message:** {Why it's empty + what to do}
- **Action:** {Primary CTA}

**Loading State:**
- **Type:** Skeleton screen (preferred) or spinner
- **Structure:** Match actual content layout

### 7.3 Usability Principles
- **Minimum tap target:** 44×44px (mobile), 24×24px (desktop)
- **Secondary confirmation:** Delete, payment, data loss actions
- **Form validation:** Real-time (on blur) + final (on submit)
- **Undo mechanism:** Provide undo for destructive actions

### 7.4 Accessibility (WCAG 2.1 AA)

**Contrast Requirements:**
- **Normal text:** Minimum 4.5:1 contrast ratio
- **Large text (18px+):** Minimum 3:1 contrast ratio
- **Non-text elements:** Minimum 3:1 contrast ratio
- **Focus indicators:** 2:1 contrast against background

**Keyboard Navigation:**
- **Tab order:** Follows visual and logical flow
- **Focus visible:** Clear 2px solid indicator
- **Skip links:** "Skip to main content" link
- **Keyboard shortcuts:** Documented in help section

**Screen Reader:**
- **Semantic HTML:** Use proper elements (nav, main, article, etc.)
- **ARIA labels:** All icons and interactive elements
- **Alt text:** All images and illustrations
- **Live regions:** Dynamic content updates

**Motion Preferences:**
- **Respect `prefers-reduced-motion`:** Disable animations if set

---

## 8. Figma Handoff

### 8.1 Figma File Structure
- **File link:** [URL]
- **Page structure:**
  - Page 1: Design System (tokens, components)
  - Page 2: User Flows
  - Page 3: Screen Designs

### 8.2 Component Naming
- **Pattern:** `{Category}/{Component Name}/{Variant}/{State}`
- **Example:** `Buttons/Primary/Default`, `Inputs/Text/Error`

### 8.3 Developer Handoff Checklist

**For each screen:**
- [ ] All components use proper variants
- [ ] All text uses proper text styles
- [ ] All layers use auto-layout
- [ ] All spacing uses tokens
- [ ] Export assets (SVG @1x, PNG @2x)
- [ ] Code snippets available
- [ ] Prototype flows defined

### 8.4 Code Snippets

**CSS Variables:**
```css
:root {
  --color-primary: #000000;
  --spacing-4: 16px;
  --text-base: 16px;
}
```

**Tailwind Config:**
```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: '#000000',
      },
      spacing: {
        '4': '16px',
      },
    },
  },
}
```

---

## 9. Assumptions & Validation

| Assumption | Validation Method | Owner | Due Date |
|------------|-------------------|-------|----------|
| {Assumption 1} | {How to validate} | {Name} | {Date} |

*If assumption proves false: {Fallback plan}*

---

## 10. Q&A (Common Questions)

Document questions raised during reviews and their answers:

**Q: {Question}**
A: {Answer with rationale}

---

## Appendix: References

- **Figma:** [Link to Figma file]
- **PRD:** [Link to PRD.md]
- **Design System:** [Link to design system docs]
- **Assets:** [Link to asset library]
```

---

## Template Usage Guidelines

1. **Feature naming:** Use English for directory names (e.g., `user-authentication`, `dashboard-feature`)
2. **Language:** Template structure is in English, but fill content in **Chinese (Simplified)**
3. **Completeness:** Fill all sections. Use TBD for unknowns, not blanks
4. **Updates:** Keep Change History current with every revision
5. **Figma integration:** Always link to Figma components for visual reference
6. **Tokens:** Use design tokens for all values (never hardcode)
7. **Accessibility:** WCAG 2.1 AA minimum, document all contrast ratios

---

## Key Principles

- **Developer-first:** Specs must be actionable and unambiguous
- **Design system driven:** Use tokens and components for consistency
- **All states documented:** default/hover/active/focus/disabled/error/loading
- **Accessibility built-in:** WCAG 2.1 AA compliance, not afterthought
- **Figma as source:** Link to Figma for visual reference and measurements
- **Living document:** Update as you learn; track changes in history

---

## Industry References

This template incorporates best practices from:

- **[Figma Developer Handoff](https://www.figma.com/best-practices/guide-to-developer-handoff/)** - Official Figma handoff guidelines
- **[Figma Design Handoff Tool](https://www.figma.com/design-handoff/)** - Design specs and code snippets
- **[UXPin Design Systems](https://www.uxpin.com/studio/blog/best-design-system-examples/)** - Design system examples from Google, Apple, IBM
- **[Handoff Design System](https://www.handoff.com/docs/overview/)** - Design tokens from Figma REST API

**Sources:**
- [Figma: Guide to Developer Handoff](https://www.figma.com/best-practices/guide-to-developer-handoff/)
- [Figma: Design Handoff Tool](https://www.figma.com/design-handoff/)
- [UXPin: Best Design System Examples (2025)](https://www.uxpin.com/studio/blog/best-design-system-examples/)
- [IxDF: Design Handoffs Overview](https://www.interaction-design.org/literature/topics/design-handoffs)
- [Handoff: Design System Documentation](https://www.handoff.com/docs/overview/)
