<script setup lang="ts">
import { cn } from "@/lib/utils";

interface Testimonial {
    quote: string;
    author: string;
    company: string;
}

const testimonials: Testimonial[] = [
    {
        quote: "Trabajar con Nexlo nos dio mucha tranquilidad. Nuestro sitio funciona y no nos preocupamos por nada.",
        author: "María G.",
        company: "Negocio Retail",
    },
    {
        quote: "Entendieron exactamente lo que necesitábamos y entregaron en tiempo y forma. Muy profesionales.",
        author: "Carlos M.",
        company: "Empresa de Servicios",
    },
    {
        quote: "Desde que relanzamos con Nexlo nuestras consultas se duplicaron. Resultados concretos.",
        author: "Laura P.",
        company: "Consultora",
    },
];
</script>

<template>
    <section class="bg-card/50 py-24 lg:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
            <div class="text-center">
                <h2
                    class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl"
                >
                    Lo que dicen nuestros clientes
                </h2>
            </div>

            <div class="mt-16 grid grid-cols-1 gap-6 lg:grid-cols-3">
                <figure
                    v-for="testimonial in testimonials"
                    :key="testimonial.author"
                    :class="
                        cn(
                            'relative flex flex-col gap-6 overflow-hidden rounded-2xl',
                            'border border-white/10 bg-background p-8',
                            'transition-all duration-300 hover:border-nexlo-blue-mid/40',
                        )
                    "
                >
                    <div
                        class="pointer-events-none absolute -top-2 -left-1 select-none text-8xl font-serif font-bold leading-none text-nexlo-blue-deep/60"
                        aria-hidden="true"
                    >
                        &ldquo;
                    </div>

                    <blockquote class="relative z-10 flex-1">
                        <p
                            class="text-base italic leading-relaxed text-slate-300"
                        >
                            &ldquo;{{ testimonial.quote }}&rdquo;
                        </p>
                    </blockquote>

                    <figcaption class="flex flex-col gap-1">
                        <div
                            class="h-px w-8 bg-nexlo-blue-mid"
                            aria-hidden="true"
                        />
                        <p class="mt-3 font-semibold text-white">
                            {{ testimonial.author }}
                        </p>
                        <p class="text-sm text-slate-500">
                            {{ testimonial.company }}
                        </p>
                    </figcaption>
                </figure>
            </div>
        </div>
    </section>
</template>
