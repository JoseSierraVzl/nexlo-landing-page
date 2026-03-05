<script setup lang="ts">
import { ref } from 'vue'
import { Menu, X } from 'lucide-vue-next'
import { Button } from '@/components/ui/button'
import { cn } from '@/lib/utils'

const mobileOpen = ref(false)

const navLinks = [
  { label: 'Servicios', href: '#servicios' },
  { label: 'Nosotros', href: '#nosotros' },
  { label: 'Contacto', href: '#contacto' },
] as const

function toggleMobile() {
  mobileOpen.value = !mobileOpen.value
}

function closeMobile() {
  mobileOpen.value = false
}
</script>

<template>
  <header
    class="fixed top-0 left-0 right-0 z-50 border-b border-white/10 bg-background/80 backdrop-blur-md"
  >
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <nav
        class="flex h-16 items-center justify-between"
        aria-label="Navegación principal"
      >
        <a
          href="#"
          class="text-xl font-bold tracking-tight text-white transition-opacity hover:opacity-80"
          aria-label="Nexlo — Inicio"
        >
          Nexlo
        </a>

        <ul class="hidden items-center gap-8 md:flex" role="list">
          <li v-for="link in navLinks" :key="link.href">
            <a
              :href="link.href"
              :class="
                cn(
                  'text-sm font-medium text-slate-300 transition-colors hover:text-white',
                )
              "
            >
              {{ link.label }}
            </a>
          </li>
        </ul>

        <div class="hidden md:flex">
          <Button
            as="a"
            href="#contacto"
            class="bg-nexlo-blue-mid hover:bg-nexlo-blue-light text-white transition-colors"
          >
            Solicitar propuesta
          </Button>
        </div>

        <button
          type="button"
          class="flex items-center justify-center rounded-md p-2 text-slate-300 transition-colors hover:text-white md:hidden"
          :aria-expanded="mobileOpen"
          aria-controls="mobile-menu"
          aria-label="Abrir menú"
          @click="toggleMobile"
        >
          <X v-if="mobileOpen" class="size-6" aria-hidden="true" />
          <Menu v-else class="size-6" aria-hidden="true" />
        </button>
      </nav>
    </div>

    <div
      v-show="mobileOpen"
      id="mobile-menu"
      class="border-t border-white/10 bg-background/95 backdrop-blur-md md:hidden"
    >
      <ul class="flex flex-col gap-1 px-6 py-4" role="list">
        <li v-for="link in navLinks" :key="link.href">
          <a
            :href="link.href"
            class="block rounded-md px-3 py-2 text-sm font-medium text-slate-300 transition-colors hover:bg-white/5 hover:text-white"
            @click="closeMobile"
          >
            {{ link.label }}
          </a>
        </li>
        <li class="mt-3">
          <Button
            as="a"
            href="#contacto"
            class="w-full bg-nexlo-blue-mid hover:bg-nexlo-blue-light text-white transition-colors"
            @click="closeMobile"
          >
            Solicitar propuesta
          </Button>
        </li>
      </ul>
    </div>
  </header>
</template>
