# Vue 3 Frontend Expert — Project Memory

## Project: nexlo-landing

See `project-nexlo.md` for full project context.

Key facts:
- Package manager: yarn (never npm)
- Stack: Vue 3 + TypeScript + Vite 7 + TailwindCSS 4 + Reka UI 2 + lucide-vue-next
- Path alias `@` → `./src`
- UI components: `src/components/ui/<name>/ComponentName.vue` + `index.ts`
- Section components: `src/components/sections/<Name>.vue`
- Global styles + CSS vars: `src/style.css` using `@theme inline` + oklch color space
- Dark mode: `.dark` class on `<html>` (forced dark, not toggled)
- `cn()` utility: `src/lib/utils.ts` (clsx + tailwind-merge)
- Button component: `src/components/ui/button/` — uses Reka UI `Primitive`, CVA `buttonVariants`
- TailwindCSS 4 `@theme inline` block maps `--color-*` vars to Tailwind utilities
- Nexlo brand palette registered as `--color-nexlo-blue-*` → usable as `bg-nexlo-blue-mid` etc.
