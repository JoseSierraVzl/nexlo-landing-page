<script setup lang="ts">
import { MessageCircle, Mail, Briefcase } from "lucide-vue-next";
import {
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip";

const waPhone = "584129117802";
const waMessage = encodeURIComponent(
    "Hola, vengo del sitio web de Nexlo y me gustaría obtener más información sobre sus servicios."
);
const waLink = `https://wa.me/${waPhone}?text=${waMessage}`;
import heroImage from "@/assets/hero-section.webp";

const noiseBg = `url("data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 width=%22200%22 height=%22200%22><filter id=%22n%22><feTurbulence type=%22fractalNoise%22 baseFrequency=%220.75%22 numOctaves=%224%22 stitchTiles=%22stitch%22/></filter><rect width=%22100%25%22 height=%22100%25%22 filter=%22url(%23n)%22/></svg>")`;
</script>

<template>
    <section
        id="inicio"
        class="relative flex min-h-screen items-center overflow-hidden pt-16"
        style="background: #0a0a0a"
    >
        <div
            class="pointer-events-none absolute inset-0 opacity-[0.035]"
            :style="{ backgroundImage: noiseBg, backgroundSize: '200px 200px' }"
            aria-hidden="true"
        />

        <div class="relative mx-auto w-full max-w-[1400px] px-8 py-20 lg:px-12">
            <div
                class="grid grid-cols-1 items-center gap-8 lg:grid-cols-[1fr_420px] xl:grid-cols-[1fr_480px]"
            >
                <div
                    class="flex flex-col justify-between gap-10 lg:min-h-[560px]"
                >
                    <div>
                        <span
                            class="inline-flex items-center gap-2 rounded-full border border-nexlo-blue-mid/30 bg-nexlo-blue-deep/20 px-4 py-1.5 text-xs font-semibold uppercase tracking-widest text-nexlo-blue-light"
                        >
                            Diseño y Desarrollo Web Profesional
                        </span>
                    </div>

                    <div class="flex-1">
                        <h1
                            class="font-display font-black uppercase leading-[0.9] tracking-tighter text-white"
                            style="font-size: clamp(4rem, 11vw, 8rem)"
                        >
                            <span class="block">sitios</span>
                            <span class="block">web que</span>
                            <span
                                class="block"
                                style="
                                    -webkit-text-stroke: 2px white;
                                    color: transparent;
                                    paint-order: stroke fill;
                                "
                                >hacen</span
                            >
                            <span
                                class="relative inline-block"
                                style="color: oklch(0.62 0.22 255)"
                            >
                                crecer.
                                <span
                                    class="absolute -bottom-2 left-0 h-1 w-full rounded-full"
                                    style="background: oklch(0.62 0.22 255)"
                                    aria-hidden="true"
                                />
                            </span>
                        </h1>
                    </div>

                    <div
                        class="flex flex-col gap-6 sm:flex-row sm:items-end sm:justify-between"
                    >
                        <p
                            class="max-w-xs text-sm leading-relaxed"
                            style="color: #888"
                        >
                            Ayudamos a negocios a tener una presencia digital
                            clara, sólida y preparada para escalar. Diseño,
                            construcción y evolución de tu sitio web.
                        </p>

                        <div class="flex gap-8 shrink-0">
                            <div class="flex flex-col gap-1">
                                <span
                                    class="font-display text-3xl font-black text-white leading-none"
                                    >+10</span
                                >
                                <span
                                    class="text-[10px] font-semibold uppercase tracking-wider"
                                    style="color: #555; max-width: 7rem"
                                >
                                    años de experiencia en la industria
                                </span>
                            </div>
                            <div class="flex flex-col gap-1">
                                <span
                                    class="font-display text-3xl font-black leading-none"
                                    style="color: oklch(0.62 0.22 255)"
                                    >+15</span
                                >
                                <span
                                    class="text-[10px] font-semibold uppercase tracking-wider"
                                    style="color: #555; max-width: 7rem"
                                >
                                    proyectos entregados con éxito
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="border-t border-white/8 pt-5">
                        <div class="flex flex-wrap items-center gap-6">
                            <a
                                href="mailto:jams4300@gmail.com"
                                class="group flex items-center gap-2 text-sm transition-colors hover:text-nexlo-blue-light"
                                style="color: #666"
                            >
                                <span
                                    class="flex h-7 w-7 items-center justify-center rounded-full transition-colors"
                                    style="background: #1a1a1a"
                                >
                                    <Mail
                                        class="size-3.5"
                                        style="color: oklch(0.62 0.22 255)"
                                        aria-hidden="true"
                                    />
                                </span>
                                jams4300@gmail.com
                            </a>

                            <TooltipProvider>
                                <Tooltip>
                                    <TooltipTrigger as-child>
                                        <a
                                            :href="waLink"
                                            target="_blank"
                                            rel="noopener noreferrer"
                                            class="group flex items-center gap-2 text-sm transition-colors hover:text-nexlo-blue-light"
                                            style="color: #666"
                                        >
                                            <span
                                                class="flex h-7 w-7 items-center justify-center rounded-full"
                                                style="background: #1a1a1a"
                                            >
                                                <MessageCircle
                                                    class="size-3.5"
                                                    style="color: oklch(0.62 0.22 255)"
                                                    aria-hidden="true"
                                                />
                                            </span>
                                            +58 412 9117802
                                        </a>
                                    </TooltipTrigger>
                                    <TooltipContent>
                                        Abrir en WhatsApp
                                    </TooltipContent>
                                </Tooltip>
                            </TooltipProvider>
                        </div>
                    </div>
                </div>

                <div class="relative flex items-center justify-center">
                    <div
                        class="absolute -inset-8 rounded-[3rem] opacity-30 blur-3xl"
                        style="
                            background: radial-gradient(
                                ellipse,
                                oklch(0.52 0.18 250) 0%,
                                transparent 65%
                            );
                        "
                        aria-hidden="true"
                    />

                    <div
                        class="relative w-full"
                        style="aspect-ratio: 5/6"
                        role="img"
                        aria-label="Ilustración decorativa del equipo Nexlo"
                    >
                        <img
                            :src="heroImage"
                            alt="Hero visual Nexlo"
                            class="absolute"
                            width="480"
                            height="576"
                            fetchpriority="high"
                            loading="eager"
                            decoding="sync"
                            style="
                                filter: drop-shadow(
                                        0 0 40px oklch(0.52 0.22 255 / 0.6)
                                    )
                                    drop-shadow(
                                        0 20px 60px oklch(0.42 0.22 255 / 0.35)
                                    );
                            "
                        />

                        <div
                            class="absolute left-6 top-6 text-xs font-medium uppercase tracking-widest text-slate-300"
                            aria-hidden="true"
                        >
                            Nexlo
                        </div>

                        <div
                            class="absolute bottom-23 left-0 flex flex-col gap-3"
                            style="right: 5%"
                        >
                            <div
                                class="relative h-14 w-14 overflow-hidden rounded-2xl ring-2 ring-nexlo-blue-light/40 shadow-[0_8px_30px_oklch(0.62_0.22_255_/_0.35)]"
                                style="
                                    background: oklch(0.62 0.22 255);
                                    box-shadow: 0 0 24px
                                        oklch(0.52 0.22 255 / 0.5);
                                "
                                aria-hidden="true"
                            >
                                <div
                                    class="absolute inset-0"
                                    style="
                                        background: oklch(0.62 0.22 255);
                                        box-shadow: 0 0 24px
                                            oklch(0.52 0.22 255 / 0.5);
                                    "
                                />
                                <div
                                    class="relative z-10 flex h-full w-full items-center justify-center"
                                >
                                    <Briefcase
                                        class="size-6 text-white opacity-90"
                                    />
                                </div>
                            </div>
                            <div
                                class="relative h-14 w-14 overflow-hidden rounded-2xl ring-2 ring-nexlo-blue-light/40 shadow-[0_8px_30px_oklch(0.62_0.22_255_/_0.35)]"
                                style="
                                    background: oklch(0.62 0.22 255);
                                    box-shadow: 0 0 24px
                                        oklch(0.52 0.22 255 / 0.5);
                                "
                                aria-hidden="true"
                            >
                                <div
                                    class="absolute inset-0"
                                    style="
                                        background: oklch(0.62 0.22 255);
                                        box-shadow: 0 0 24px
                                            oklch(0.52 0.22 255 / 0.5);
                                    "
                                />
                                <div
                                    class="relative z-10 flex h-full w-full items-center justify-center"
                                >
                                    <Mail
                                        class="size-6 text-white opacity-90"
                                    />
                                </div>
                            </div>
                        </div>

                        <TooltipProvider>
                            <Tooltip>
                                <TooltipTrigger as-child>
                                    <a
                                        :href="waLink"
                                        target="_blank"
                                        rel="noopener noreferrer"
                                        aria-label="Contactar por WhatsApp"
                                        class="group absolute top-3 right-3 flex h-15 w-15 flex-col items-center justify-center rounded-full shadow-xl transition-transform hover:scale-105"
                                        style="
                                            background: oklch(0.62 0.22 255);
                                            box-shadow: 0 0 24px oklch(0.52 0.22 255 / 0.5);
                                        "
                                    >
                                        <MessageCircle
                                            class="size-6 text-white"
                                            aria-hidden="true"
                                        />
                                    </a>
                                </TooltipTrigger>
                                <TooltipContent>
                                    Abrir en WhatsApp
                                </TooltipContent>
                            </Tooltip>
                        </TooltipProvider>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
