<script setup lang="ts">
import { Button } from '@/components/ui/button'
import { cn } from '@/lib/utils'
</script>

<template>
  <section
    id="contacto"
    class="relative overflow-hidden py-24 lg:py-32"
  >
    <div
      class="absolute inset-0"
      style="
        background:
          radial-gradient(ellipse at 50% 0%, oklch(0.35 0.12 250 / 0.5) 0%, transparent 65%),
          radial-gradient(ellipse at 50% 100%, oklch(0.52 0.18 250 / 0.2) 0%, transparent 60%),
          oklch(0.10 0 0);
      "
      aria-hidden="true"
    />

    <div
      class="pointer-events-none absolute top-0 left-0 right-0 h-px"
      style="background: linear-gradient(90deg, transparent, oklch(0.52 0.18 250 / 0.6), transparent)"
      aria-hidden="true"
    />

    <div class="relative mx-auto max-w-3xl px-6 text-center lg:px-8">
      <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl">
        Construyamos tu sitio web de forma profesional
      </h2>
      <p class="mx-auto mt-6 max-w-xl text-lg leading-relaxed text-slate-300">
        Contanos sobre tu negocio y evaluamos juntos la mejor solución para vos.
      </p>

      <div class="mt-10 flex flex-col items-center gap-4">
        <Button
          as="a"
          href="mailto:jams4300@gmail.com"
          size="lg"
          :class="
            cn(
              'bg-nexlo-blue-mid hover:bg-nexlo-blue-light px-10 text-base font-semibold text-white',
              'shadow-lg shadow-nexlo-blue-deep/50 transition-all duration-300',
              'hover:shadow-nexlo-blue-mid/50 hover:-translate-y-0.5',
            )
          "
        >
          Solicitar propuesta
        </Button>

        <a
          href="mailto:jams4300@gmail.com"
          class="text-sm text-slate-400 transition-colors hover:text-nexlo-blue-light"
        >
          O escribinos a
          <span class="font-medium text-nexlo-blue-light">jams4300@gmail.com</span>
        </a>
      </div>
    </div>
  </section>
</template>
