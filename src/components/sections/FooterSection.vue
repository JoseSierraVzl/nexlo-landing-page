<script setup lang="ts">
import { Mail, MessageCircle, Linkedin, Instagram } from "lucide-vue-next";
import { cn } from "@/lib/utils";
import {
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip";

const waLink = `https://wa.me/584129117802?text=${encodeURIComponent("Hola, vengo del sitio web de Nexlo y me gustaría obtener más información sobre sus servicios.")}`;

interface FooterLink {
    label: string;
    href: string;
}

const serviceLinks: FooterLink[] = [
    { label: "Diseño Web", href: "#servicios" },
    { label: "Landing Pages", href: "#servicios" },
    { label: "Catálogos", href: "#servicios" },
    { label: "Mantenimiento", href: "#servicios" },
];

const socialLinks = [
    {
        icon: Mail,
        label: "Correo electrónico",
        href: "mailto:jams4300@gmail.com",
    },
    {
        icon: MessageCircle,
        label: "WhatsApp",
        href: waLink,
    },
    { icon: Linkedin, label: "LinkedIn", href: "#" },
    { icon: Instagram, label: "Instagram", href: "#" },
] as const;
</script>

<template>
    <footer
        class="relative border-t border-white/10 bg-background"
        aria-label="Pie de página"
    >
        <div
            class="pointer-events-none absolute top-0 left-0 right-0 h-px"
            style="
                background: linear-gradient(
                    90deg,
                    transparent,
                    oklch(0.52 0.18 250 / 0.4),
                    transparent
                );
            "
            aria-hidden="true"
        />

        <div class="mx-auto max-w-7xl px-6 py-16 lg:px-8">
            <div class="grid grid-cols-1 gap-12 sm:grid-cols-2 lg:grid-cols-3">
                <div class="flex flex-col gap-4">
                    <a
                        href="#"
                        class="text-2xl font-bold tracking-tight text-white transition-opacity hover:opacity-80"
                    >
                        Nexlo
                    </a>
                    <p class="text-sm text-slate-400">
                        Sitios Web Profesionales
                    </p>
                    <p class="max-w-xs text-sm leading-relaxed text-slate-400">
                        Más de una década ayudando a empresas a crecer con
                        presencia digital sólida y sostenible.
                    </p>
                </div>

                <div class="flex flex-col gap-4">
                    <h3
                        class="text-sm font-semibold uppercase tracking-widest text-slate-400"
                    >
                        Servicios
                    </h3>
                    <ul class="flex flex-col gap-3" role="list">
                        <li v-for="link in serviceLinks" :key="link.label">
                            <a
                                :href="link.href"
                                class="text-sm text-slate-400 transition-colors hover:text-nexlo-blue-light"
                            >
                                {{ link.label }}
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="flex flex-col gap-4">
                    <h3
                        class="text-sm font-semibold uppercase tracking-widest text-slate-400"
                    >
                        Contacto
                    </h3>
                    <ul class="flex flex-col gap-3" role="list">
                        <li>
                            <a
                                href="mailto:jams4300@gmail.com"
                                class="text-sm text-slate-400 transition-colors hover:text-nexlo-blue-light"
                            >
                                jams4300@gmail.com

                            </a>
                        </li>
                        <li>
                            <TooltipProvider>
                                <Tooltip>
                                    <TooltipTrigger as-child>
                                        <a
                                            :href="waLink"
                                            class="text-sm text-slate-400 transition-colors hover:text-nexlo-blue-light"
                                            target="_blank"
                                            rel="noopener noreferrer"
                                        >
                                            WhatsApp
                                        </a>
                                    </TooltipTrigger>
                                    <TooltipContent>
                                        Abrir en WhatsApp
                                    </TooltipContent>
                                </Tooltip>
                            </TooltipProvider>
                        </li>
                    </ul>

                    <div class="mt-2 flex items-center gap-4">
                        <template v-for="social in socialLinks" :key="social.label">
                            <TooltipProvider v-if="social.label === 'WhatsApp'">
                                <Tooltip>
                                    <TooltipTrigger as-child>
                                        <a
                                            :href="social.href"
                                            :aria-label="social.label"
                                            target="_blank"
                                            rel="noopener noreferrer"
                                            :class="cn(
                                                'flex h-9 w-9 items-center justify-center rounded-lg',
                                                'border border-white/10 text-slate-400',
                                                'transition-all duration-200 hover:border-nexlo-blue-mid/60 hover:text-nexlo-blue-light',
                                            )"
                                        >
                                            <component :is="social.icon" class="size-4" aria-hidden="true" />
                                        </a>
                                    </TooltipTrigger>
                                    <TooltipContent>Abrir en WhatsApp</TooltipContent>
                                </Tooltip>
                            </TooltipProvider>

                            <a
                                v-else
                                :href="social.href"
                                :aria-label="social.label"
                                :target="social.href.startsWith('http') ? '_blank' : undefined"
                                :rel="social.href.startsWith('http') ? 'noopener noreferrer' : undefined"
                                :class="cn(
                                    'flex h-9 w-9 items-center justify-center rounded-lg',
                                    'border border-white/10 text-slate-400',
                                    'transition-all duration-200 hover:border-nexlo-blue-mid/60 hover:text-nexlo-blue-light',
                                )"
                            >
                                <component :is="social.icon" class="size-4" aria-hidden="true" />
                            </a>
                        </template>
                    </div>
                </div>
            </div>

            <div class="mt-12 border-t border-white/10 pt-8">
                <p class="text-center text-xs text-slate-400">
                    &copy; 2025 Nexlo. Todos los derechos reservados.
                </p>
            </div>
        </div>
    </footer>
</template>
