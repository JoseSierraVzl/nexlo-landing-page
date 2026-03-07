<script setup lang="ts">
import { cn } from "@/lib/utils";

const noiseSvg = `url("data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 width=%22200%22 height=%22200%22><filter id=%22noise%22><feTurbulence type=%22fractalNoise%22 baseFrequency=%220.65%22 numOctaves=%223%22 stitchTiles=%22stitch%22/><feColorMatrix type=%22saturate%22 values=%220%22/></filter><rect width=%22100%25%22 height=%22100%25%22 filter=%22url(%23noise)%22 opacity=%221%22/></svg>")`;
</script>

<template>
    <section class="bg-background py-24 lg:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
            <div class="grid grid-cols-1 items-center gap-16 lg:grid-cols-2">
                <div class="relative flex items-center justify-center">
                    <div
                        :class="
                            cn(
                                'relative h-[480px] w-full max-w-[520px] overflow-hidden rounded-2xl',
                                'border border-white/10',
                            )
                        "
                        role="img"
                        aria-label="Imagen decorativa del equipo Nexlo"
                    >
                        <div
                            class="absolute inset-0"
                            style="
                                background: linear-gradient(
                                    160deg,
                                    oklch(0.25 0 0) 0%,
                                    oklch(0.18 0 0) 40%,
                                    oklch(0.12 0 0) 100%
                                );
                            "
                            aria-hidden="true"
                        />
                        <div
                            class="absolute inset-0 opacity-20"
                            :style="{
                                backgroundImage: noiseSvg,
                                backgroundSize: '200px 200px',
                            }"
                            aria-hidden="true"
                        />

                        <div
                            class="absolute bottom-0 left-0 right-0 h-3/4"
                            style="
                                background: linear-gradient(
                                    to top,
                                    oklch(0.22 0 0) 0%,
                                    oklch(0.28 0.02 250) 50%,
                                    transparent 100%
                                );
                            "
                            aria-hidden="true"
                        />
                        <div
                            class="absolute left-0 top-0 h-full w-1 bg-gradient-to-b from-nexlo-blue-light via-nexlo-blue-mid to-transparent"
                            aria-hidden="true"
                        />
                        <div
                            class="absolute right-6 top-6 h-3 w-3 rounded-full bg-nexlo-blue-light shadow-lg shadow-nexlo-blue-mid/60"
                            aria-hidden="true"
                        />
                        <div class="absolute bottom-6 left-6 right-6">
                            <p
                                class="text-xs font-medium uppercase tracking-widest text-slate-500"
                            >
                                Equipo Nexlo
                            </p>
                        </div>
                    </div>
                </div>

                <div class="flex flex-col gap-6">
                    <span
                        class="text-sm font-semibold uppercase tracking-widest text-nexlo-blue-light"
                    >
                        Nuestra Visión
                    </span>

                    <h2
                        class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl"
                    >
                        Impulsamos el crecimiento digital de tu negocio
                    </h2>

                    <p class="text-lg leading-relaxed text-slate-400">
                        Las soluciones deben ser simples para el cliente,
                        robustas internamente. Foco en las personas, procesos
                        claros y resultados sostenibles.
                    </p>

                    <div class="flex items-center gap-4">
                        <div
                            class="h-px w-16 bg-gradient-to-r from-nexlo-blue-mid to-transparent"
                        />
                        <span class="text-sm text-slate-400"
                            >Claridad. Solidez. Evolución.</span
                        >
                    </div>

                    <ul class="mt-2 flex flex-col gap-3" role="list">
                        <li
                            v-for="value in [
                                'Procesos claros y transparentes',
                                'Foco en el cliente y sus objetivos',
                                'Resultados medibles y sostenibles',
                            ]"
                            :key="value"
                            class="flex items-center gap-3 text-slate-300"
                        >
                            <div
                                class="h-1.5 w-1.5 shrink-0 rounded-full bg-nexlo-blue-mid"
                                aria-hidden="true"
                            />
                            {{ value }}
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</template>
