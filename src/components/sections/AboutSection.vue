<script setup lang="ts">
import { Award, Headphones, TrendingUp } from "lucide-vue-next";
import { cn } from "@/lib/utils";

interface Differentiator {
    icon: typeof Award;
    title: string;
    description: string;
}

const differentiators: Differentiator[] = [
    {
        icon: Award,
        title: "Experiencia Real",
        description:
            "+10 años en la industria, con proyectos de distintos rubros y escala.",
    },
    {
        icon: Headphones,
        title: "Soporte Activo",
        description:
            "No te abandonamos tras el lanzamiento. Tu sitio es acompañado en el tiempo.",
    },
    {
        icon: TrendingUp,
        title: "Visión de Crecimiento",
        description:
            "Soluciones diseñadas para evolucionar con el negocio, no para quedarse quietas.",
    },
];
</script>

<template>
    <section id="nosotros" class="bg-background py-24 lg:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
            <div class="max-w-2xl">
                <h2
                    class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl"
                >
                    Un equipo enfocado en resultados digitales reales
                </h2>
                <p class="mt-6 text-lg leading-relaxed text-slate-400">
                    En Nexlo, cada sitio web comunica, funciona y se sostiene en
                    el tiempo. Sin improvisación. Sin proyectos abandonados.
                    Sitios diseñados para operar y crecer junto al negocio.
                </p>
            </div>

            <div
                class="mt-16 grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3"
            >
                <article
                    v-for="item in differentiators"
                    :key="item.title"
                    :class="
                        cn(
                            'group flex flex-col gap-4 rounded-xl border border-white/10 bg-card p-8',
                            'transition-all duration-300 hover:border-nexlo-blue-mid/50 hover:bg-nexlo-blue-deep/10',
                        )
                    "
                >
                    <div
                        class="flex h-12 w-12 items-center justify-center rounded-lg bg-nexlo-blue-deep/40 text-nexlo-blue-light transition-colors group-hover:bg-nexlo-blue-mid/30"
                    >
                        <component
                            :is="item.icon"
                            class="size-6"
                            aria-hidden="true"
                        />
                    </div>
                    <h3 class="text-lg font-semibold text-white">
                        {{ item.title }}
                    </h3>
                    <p class="text-sm leading-relaxed text-slate-400">
                        {{ item.description }}
                    </p>
                </article>
            </div>
        </div>
    </section>
</template>
