# Project: nexlo-landing

## Purpose
Landing page for Nexlo — professional web design agency (Argentina). Content in Spanish.
Dark-first design (forced `.dark` class on `<html>`).

## Brand Tokens (added to @theme inline)
- `--color-nexlo-blue-deep`: oklch(0.35 0.12 250) — dark navy
- `--color-nexlo-blue-mid`: oklch(0.52 0.18 250) — action blue
- `--color-nexlo-blue-light`: oklch(0.70 0.14 250) — accent blue
- Background: oklch(0.10 0 0) — very dark charcoal

## Section Architecture
App.vue wires: NavBar → HeroSection → AboutSection → ServicesSection → VisionSection → MetricsSection → TeamSection → TestimonialsSection → CtaSection → FooterSection
All sections live in `src/components/sections/`.

## Style Decisions
- Legacy Vite scaffolding removed from style.css (body flex centering, #app max-width, h1 font-size, button/a raw styles, .card, @media prefers-color-scheme)
- `:root` background overridden to oklch(0.10 0 0), color-scheme forced to dark
- `@layer base` body uses `@apply bg-background text-foreground`
- No external images — CSS gradients and geometric shapes as placeholders

## Component Patterns
- NavBar: fixed top, backdrop-blur, hamburger mobile menu with `ref<boolean>` toggle
- HeroSection: asymmetric 2-col, CSS blob placeholder (radial gradient div), no img src
- Cards: dark bg, blue border on hover, smooth transition
- Metrics: large bold blue number + white label
- Team: circular avatar placeholder (blue gradient div)
- Footer: 3-col desktop, stacked mobile

## Known Constraints
- `--color-*` prefix in `@theme inline` → Tailwind utilities (e.g. `bg-nexlo-blue-mid`)
- Do NOT use `bg-[var(--nexlo-blue-mid)]` — use the utility class directly after @theme registration
- Button imports from `@/components/ui/button` (named export `Button`)
- Icons: `lucide-vue-next`, decorative ones get `aria-hidden="true"`
