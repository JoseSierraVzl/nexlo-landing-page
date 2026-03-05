<script setup lang="ts">
import { Monitor, FileText, LayoutGrid, Wrench } from 'lucide-vue-next'
import { cn } from '@/lib/utils'

interface Service {
  icon: typeof Monitor
  name: string
  description: string
}

const services: Service[] = [
  {
    icon: Monitor,
    name: 'Diseño y Desarrollo Web',
    description:
      'Sitios corporativos modernos, alineados con tu marca y objetivos de negocio.',
  },
  {
    icon: FileText,
    name: 'Landing Pages',
    description:
      'Páginas de alta conversión que transforman visitantes en clientes potenciales.',
  },
  {
    icon: LayoutGrid,
    name: 'Catálogos de Productos y Servicios',
    description:
      'Presentaciones claras, escalables y fáciles de gestionar para tu oferta.',
  },
  {
    icon: Wrench,
    name: 'Mantenimiento y Evolución',
    description:
      'Tu sitio siempre activo, actualizado y evolucionando con el negocio.',
  },
]
</script>

<template>
  <section
    id="servicios"
    class="bg-card/50 py-24 lg:py-32"
  >
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="text-center">
        <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl">
          Servicios
        </h2>
        <p class="mx-auto mt-4 max-w-xl text-lg text-slate-400">
          Soluciones digitales pensadas para operar y escalar con tu negocio.
        </p>
      </div>

      <div class="mt-16 grid grid-cols-1 gap-6 sm:grid-cols-2">
        <article
          v-for="service in services"
          :key="service.name"
          :class="
            cn(
              'group relative flex flex-col gap-6 overflow-hidden rounded-2xl border border-white/10',
              'bg-background p-8 transition-all duration-300',
              'hover:border-nexlo-blue-mid/60 hover:shadow-lg hover:shadow-nexlo-blue-deep/20',
            )
          "
        >
          <div
            class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
            style="background: radial-gradient(ellipse at 0% 0%, oklch(0.35 0.12 250 / 0.15) 0%, transparent 60%)"
            aria-hidden="true"
          />

          <div
            class="relative flex h-14 w-14 items-center justify-center rounded-full bg-gradient-to-br from-nexlo-blue-deep to-nexlo-blue-mid text-white shadow-md shadow-nexlo-blue-deep/40"
          >
            <component :is="service.icon" class="size-6" aria-hidden="true" />
          </div>

          <div class="flex flex-col gap-3">
            <h3 class="text-xl font-semibold text-white">{{ service.name }}</h3>
            <p class="leading-relaxed text-slate-400">{{ service.description }}</p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>
