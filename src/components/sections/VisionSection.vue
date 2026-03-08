<script setup lang="ts">
import { cn } from "@/lib/utils";
import teamImage from "@/assets/team-nexlo.webp";
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
                    >
                        <img
                            :src="teamImage"
                            alt="Equipo Nexlo"
                            class="h-full w-full object-cover object-center"
                        />
                        <div
                            class="absolute bottom-0 left-0 right-0 h-1/4 bg-gradient-to-t from-black/60 to-transparent"
                            aria-hidden="true"
                        />
                        <div
                            class="absolute left-0 top-0 h-full w-1 bg-gradient-to-b from-nexlo-blue-light via-nexlo-blue-mid to-transparent"
                            aria-hidden="true"
                        />
                        <div class="absolute bottom-6 left-6">
                            <p
                                class="text-xs font-medium uppercase tracking-widest text-slate-300"
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
