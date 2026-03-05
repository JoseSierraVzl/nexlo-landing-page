<script setup lang="ts">
import { cn } from '@/lib/utils'

interface Metric {
  value: string
  label: string
  description: string
}

const metrics: Metric[] = [
  {
    value: '+10',
    label: 'Años',
    description: 'Experiencia en desarrollo web',
  },
  {
    value: '+60',
    label: 'Proyectos',
    description: 'Entregados y operativos',
  },
  {
    value: '+40',
    label: 'Empresas',
    description: 'Con presencia digital activa',
  },
  {
    value: '100%',
    label: 'Compromiso',
    description: 'Con los resultados del cliente',
  },
]
</script>

<template>
  <section class="bg-card/50 py-24 lg:py-32">
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="text-center">
        <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl">
          Soluciones digitales con impacto
        </h2>
      </div>

      <dl
        class="mt-16 grid grid-cols-2 gap-px overflow-hidden rounded-2xl bg-white/5 lg:grid-cols-4"
      >
        <div
          v-for="metric in metrics"
          :key="metric.value"
          :class="
            cn(
              'flex flex-col items-center gap-2 bg-background px-8 py-10 text-center',
              'transition-colors duration-300 hover:bg-nexlo-blue-deep/20',
            )
          "
        >
          <dt class="sr-only">{{ metric.description }}</dt>
          <dd
            class="text-5xl font-bold tracking-tight text-nexlo-blue-light sm:text-6xl"
          >
            {{ metric.value }}
            <span class="ml-1 text-2xl font-semibold text-nexlo-blue-mid">
              {{ metric.label }}
            </span>
          </dd>
          <p class="mt-1 text-sm text-slate-400">{{ metric.description }}</p>
        </div>
      </dl>
    </div>
  </section>
</template>
