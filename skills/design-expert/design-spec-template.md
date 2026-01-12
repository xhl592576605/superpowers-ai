# DESIGN_SPEC Markdown Template

Use this template when generating design specification documents.

Copy this structure and fill in all sections. Do not skip any sections.

**IMPORTANT:** This template is in English, but actual generated documents should be in **Chinese (Simplified)** per user requirements.

```markdown
# Design Specification (DESIGN_SPEC)

> Feature/Module: {feature name}
> Path: `.claude/superpowers/plan/change/{feature}/DESIGN_SPEC.md` (use English for {feature})
> PRD Path: `.claude/superpowers/plan/change/{feature}/PRD.md` (same feature folder)
> Any changes must update this file synchronously

## 1. Project Overview

### 1.1 Basic Information
- Feature/Module Name:
- Target Platform: Web / Mobile / Desktop
- Design Objectives:
- Design Preferences/Brand Tone:

### 1.2 Design Principles
- Core design principles:
- Brand value delivery:

## 2. Users and Scenarios

### 2.1 Core User Personas
- User Type 1:
  - Basic characteristics:
  - Usage scenarios:
  - Expected experience:

### 2.2 Key Scenarios and Tasks
- Scenario 1: [Description]
  - User goal:
  - Key actions:
  - Success criteria:

### 2.3 Experience Pain Points and Opportunities
- Pain point 1:
- Opportunity 1:

## 3. Design Research

### 3.1 Industry Trends
- Trend 1:
- Trend 2:

### 3.2 Competitive Reference
| Competitor | Design Worth Borrowing | Design to Avoid |
|-----------|------------------------|-----------------|
|           |                        |                 |

### 3.3 Conclusions and Design Direction
- Design direction:
- Visual style positioning:
- Interaction strategy:

## 4. Information Architecture and Flow

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
- Main flow: [Step-by-step description]
- Exception flow: [Step-by-step description]

### 4.3 Key Page Inventory
| Page Name | Main Function | Priority |
|-----------|---------------|----------|
| Home |  | P0 |
| List Page |  | P1 |

## 5. Visual System

### 5.1 Color System

**Primary Colors**
| Token | Color Value | Usage |
|-------|-------------|-------|
| --color-primary | #000 | Primary buttons, links |
| --color-primary-hover | #333 | Hover state |
| --color-primary-active | #666 | Active state |
| --color-primary-disabled | #999 | Disabled state |

**Semantic Colors**
| Token | Color Value | Usage |
|-------|-------------|-------|
| --color-success | #10B981 | Success state |
| --color-warning | #F59E0B | Warning state |
| --color-error | #EF4444 | Error state |
| --color-info | #3B82F6 | Info notification |

**Neutral Colors**
| Token | Color Value | Usage |
|-------|-------------|-------|
| --color-bg-primary | #FFFFFF | Primary background |
| --color-bg-secondary | #F3F4F6 | Secondary background |
| --color-text-primary | #111827 | Primary text |
| --color-text-secondary | #6B7280 | Secondary text |
| --color-border | #E5E7EB | Border/divider |

### 5.2 Typography System

**Font Family**
| Token | Font | Usage |
|-------|------|-------|
| --font-family-base | system-ui, -apple-system, sans-serif | Base font |
| --font-family-mono | 'SF Mono', Monaco, monospace | Code/numbers |

**Font Size and Line Height**
| Token | Font Size | Line Height | Usage |
|-------|-----------|-------------|-------|
| --text-xs | 12px | 16px | Auxiliary notes |
| --text-sm | 14px | 20px | Small labels |
| --text-base | 16px | 24px | Body text |
| --text-lg | 18px | 28px | Small headings |
| --text-xl | 20px | 28px | Headings |
| --text-2xl | 24px | 32px | Large headings |
| --text-3xl | 30px | 38px | Page titles |

**Font Weight**
| Token | Weight | Usage |
|-------|--------|-------|
| --font-normal | 400 | Regular text |
| --font-medium | 500 | Emphasized text |
| --font-semibold | 600 | Small headings |
| --font-bold | 700 | Headings |

### 5.3 Grid/Spacing

**Spacing System (8px base)**
| Token | Value | Usage |
|-------|-------|-------|
| --spacing-0 | 0 | No spacing |
| --spacing-1 | 4px | Minimal spacing |
| --spacing-2 | 8px | Small spacing |
| --spacing-3 | 12px | Default spacing |
| --spacing-4 | 16px | Medium spacing |
| --spacing-6 | 24px | Large spacing |
| --spacing-8 | 32px | Extra large spacing |

**Container Width**
| Breakpoint | Container Max Width |
|------------|---------------------|
| Mobile | 100% |
| Tablet | 768px |
| Desktop | 1024px |
| Wide | 1280px |

### 5.4 Icons/Illustrations
- Icon library: [e.g., Heroicons / Lucide / Custom]
- Icon sizes: 16px, 20px, 24px, 32px
- Illustration style: [Description]

### 5.5 Design Tokens (Naming and Hierarchy)
- Token naming convention: `--{category}-{property}-{variant}`
- Hierarchy structure:
  - Base tokens (raw values)
  - Semantic tokens (business meaning)
  - Component tokens (component-specific)

## 6. Component Specifications

### 6.1 Base Components

**Button**
| State | Style | Token |
|-------|-------|-------|
| Default | Primary background, white text | --button-primary |
| Hover | Darker primary background | --button-primary-hover |
| Active | Even darker primary background | --button-primary-active |
| Disabled | Gray background, not clickable | --button-disabled |
| Loading | Spinning icon | --button-loading |

**Input**
| State | Style |
|-------|-------|
| Default | Gray border |
| Focus | Blue border, shadow |
| Error | Red border, error message |
| Disabled | Gray background, not editable |

### 6.2 Business Components

**[Component Name 1]**
- Purpose:
- Composition:
- State variants:
- Usage scenarios:

### 6.3 State Specifications
All components must include the following states:
- Default
- Hover
- Active/Selected
- Disabled
- Loading
- Error

### 6.4 Component Library Integration
- Component library in use: [e.g., Ant Design / Material-UI / Tailwind / Custom]
- Customization method:
- Version constraints:

## 7. Interaction Specifications

### 7.1 Feedback and Animation
- Button click feedback: Scale 0.98, duration 100ms
- Page transition: Fade in/out, duration 200ms
- Loading state: Spinning icon, linear animation
- Micro-interaction: Color gradient on hover, duration 150ms

### 7.2 Error and Empty States
- Error message: Red text + icon, displayed near error location
- Empty state: Illustration + prompt text + action button
- Loading state: Skeleton screen or spinning icon

### 7.3 Usability Principles
- Minimum clickable element size: 44×44px
- Secondary confirmation for critical actions: Delete, payment, etc.
- Form validation: Real-time feedback, final verification before submit
- Undo mechanism: Provide undo/redo options

### 7.4 Accessibility

**Contrast Requirements**
- Text contrast: At least 4.5:1 (WCAG AA)
- Large text contrast: At least 3:1 (WCAG AA)
- Non-text contrast: At least 3:1 (WCAG AA)

**Keyboard Navigation**
- Tab order: Follows visual and logical flow
- Focus visible: Clear focus indicator
- Keyboard shortcuts: Defined and documented

**Screen Reader**
- Semantic HTML
- ARIA labels
- Alt text

## 8. Assumptions to Validate
- Assumption 1: ... → Validation method/Metrics/Owner/Time

## 9. Change Log
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
