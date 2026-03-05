# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
yarn dev        # Start Vite dev server with HMR
yarn build      # TypeScript check (vue-tsc) + production build
yarn preview    # Preview production build locally
```

Use `yarn` (not npm) as the package manager.

## Architecture

**Stack**: Vue 3 + TypeScript + Vite + TailwindCSS 4 + Reka UI

**Entry flow**: `index.html` → `src/main.ts` → `App.vue`

**Path alias**: `@` resolves to `./src` (configured in both `vite.config.ts` and `tsconfig.app.json`)

### UI Component Pattern

Components follow a shadcn-vue pattern (see `components.json` for config):

- **Headless primitives**: Reka UI (`reka-ui`) provides accessible unstyled components
- **Variant management**: `class-variance-authority` (CVA) defines variants via `cva()`
- **Class merging**: `cn()` from `src/lib/utils.ts` combines `clsx` + `tailwind-merge`
- **Component structure**: Each UI component lives in `src/components/ui/<name>/` with a `Button.vue` + `index.ts` pattern, where `index.ts` exports both the component and its CVA variants

Example: `src/components/ui/button/index.ts` exports `buttonVariants` (CVA config) and the `Button` component re-exported from `Button.vue`.

### Styling

- Global CSS variables and Tailwind configuration in `src/style.css` using `@theme` directive (oklch color space)
- Dark mode via `.dark` class on `<html>`
- Animations via `tw-animate-css`
- Lucide icons via `lucide-vue-next`

## Agent & Skill Routing

### `vue3-frontend-expert` agent — delegate when:
- Building or designing new UI sections, pages, or components (hero, cards, navbars, modals, forms, etc.)
- Architecting scalable component structures or defining CVA variant systems
- Reviewing recently written Vue components for quality, type safety, accessibility, or best practices
- Advising on Composition API patterns, composables, slots, or renderless component design
- Integrating Reka UI primitives into styled, accessible components
- Debugging reactivity issues, prop/emit types, or template ref usage
- Asking "how should I structure this component?" or "is this idiomatic Vue 3?"

> **Do not** delegate: simple single-line edits, file reads, build commands, or non-frontend questions.

---

### `tailwindcss-development` skill — invoke when:
- Adding or modifying styles on existing components or pages
- Implementing responsive layouts or breakpoint behavior
- Adding or fixing dark mode variants (`dark:`)
- Extracting repeated class patterns or debugging spacing/layout issues
- User mentions: CSS, styling, classes, Tailwind, restyle, visual/UI tweaks

> **Overlap with vue3-frontend-expert**: For net-new component generation that requires both structure and styling, prefer the agent. For style-only changes to existing markup, prefer this skill.

---

### `keybindings-help` skill — invoke when:
- User asks to customize keyboard shortcuts, rebind keys, add chord bindings, or modify `~/.claude/keybindings.json`

---

### `find-skills` skill — invoke when:
- User asks "how do I do X", "find a skill for X", "is there a skill that can…", or wants to discover installable skills
