# ChatGPT API Integration Guide

## Overview
This document provides ChatGPT with access instructions to modify the Moon Cabin Collective website structure and styles.

## Repository Access
- **Repository:** previcio-droid/moon-cabin-collective
- **Owner:** previcio-droid
- **Access Type:** Public repository with write permissions via GitHub API

## File Structure
```
moon-cabin-collective/
├── index.html          (Main website file - contains HTML + embedded CSS)
├── images/             (Directory for assets)
│   └── moon-cabin-logo.png
├── CHATGPT_API_GUIDE.md (This file)
└── README.md
```

## Key Files to Modify

### index.html (Main File)
- **Location:** Root directory
- **Content:** 
  - HTML structure (lines 699-860)
  - Embedded CSS styles (lines 11-697)
  - Brand SVG logo (lines 706-712)
  - Layout grid system
  - Responsive design queries (lines 680-696)

## CSS Variables (Color Scheme)
Located in `:root` selector at lines 12-24:
```css
--ink: #1e1812           (Dark brown text/borders)
--cream: #f7efe0         (Light cream background)
--paper: #fff8e9         (Paper white)
--moss: #586b45          (Muted green)
--pine: #4f7a55          (Forest green)
--ember: #e46f3c         (Orange/red buttons)
--gold: #eab94d          (Gold accents)
--moon: #d8d6bd          (Light tan)
--river: #5c898f         (Blue-green)
--shadow: rgba(30, 24, 18, 0.18)
--line: rgba(30, 24, 18, 0.22)
```

## Key Sections to Modify

### 1. Header & Navigation (Lines 58-73)
- `.nav` - Navigation bar styling
- `.brand` - Logo and brand name
- `.links` - Navigation links

### 2. Hero Section (Lines 282-341)
- `.hero` - Main hero grid layout
- `.moon-card` - Featured logo card with effects
- `.logo-placeholder` - Decorative moon/cabin logo
- `.placeholder-cabin` - Cabin illustration
- `.placeholder-trees` - Tree silhouettes

### 3. Product Grid (Lines 464-556)
- `.product-grid` - 4-column grid (2 on tablet, 1 on mobile)
- `.product` - Individual product cards
- `.product-art` - Placeholder art areas
- `.tag` - Product category tags

### 4. Story Section (Lines 557-602)
- `.story` - Two-column layout
- `.quote-card` - Green quote background
- `.story-card` - Content card

### 5. Process Section (Lines 604-637)
- `.process-grid` - 3-column grid
- `.process` - Individual process steps with numbered circles

### 6. Call-to-Action (Lines 638-666)
- `.cta` - Large CTA banner

### 7. Footer (Lines 667-678)
- `footer` - Footer styling and layout

## Responsive Breakpoints
- **920px and below:** Single column layouts, 2-column product grid, hidden desktop nav
- **560px and below:** Single column products, condensed typography

## Common Tasks

### Change Colors
1. Modify CSS variables in `:root` selector (lines 12-24)
2. Or target specific elements with new color values

### Modify Layout
1. Adjust `grid-template-columns` for `.product-grid`, `.process-grid`, etc.
2. Modify gap values for spacing
3. Update `grid-template-columns: 1fr` for columns

### Update Typography
1. Font families: `Fraunces` (serif) for headlines, `Inter` (sans-serif) for body
2. Modify `font-size`, `letter-spacing`, `font-weight` in h1, h2, h3, p selectors

### Add/Remove Sections
1. Add new HTML sections after closing existing sections (after </section> tags)
2. Create accompanying CSS classes
3. Follow existing patterns for consistency

## GitHub API Endpoints (For Reference)
- Get file: `GET /repos/previcio-droid/moon-cabin-collective/contents/{path}`
- Update file: `PUT /repos/previcio-droid/moon-cabin-collective/contents/{path}`
- Create file: `POST /repos/previcio-droid/moon-cabin-collective/contents/{path}`

## Modification Process for ChatGPT

When you want to make changes:

1. **Analyze** - Identify which CSS classes or HTML elements need modification
2. **Plan** - Describe what will change (colors, layout, sizing, etc.)
3. **Execute** - Use the GitHub API to update index.html
4. **Commit** - Include descriptive commit messages
5. **Verify** - Provide the updated file for review

## Important Notes

- **Backup:** Always save/reference the original state before major changes
- **Responsive Design:** Test changes across breakpoints (920px, 560px)
- **Accessibility:** Maintain ARIA labels and semantic HTML
- **Color Contrast:** Ensure text is readable (WCAG compliance)
- **Asset Paths:** Images are in `images/` directory
- **GitHub Pages:** This repo has Pages enabled - changes auto-deploy

## Testing Changes

After modifications:
1. The site will auto-deploy via GitHub Pages at: `https://previcio-droid.github.io/moon-cabin-collective/`
2. Clear browser cache if changes don't appear immediately
3. Check responsive behavior using browser DevTools

---

**Last Updated:** 2026-05-14
**For ChatGPT:** This guide enables you to confidently make structural and style changes to the website.
