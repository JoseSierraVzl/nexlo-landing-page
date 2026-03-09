<script setup lang="ts">
import { ref } from "vue";
import { cn } from "@/lib/utils";
import {
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip";

const preview = ref<{ src: string; name: string } | null>(null);

function openPreview(member: { image?: string; name: string }) {
    if (member.image) preview.value = { src: member.image, name: member.name };
}

function closePreview() {
    preview.value = null;
}

interface TeamMember {
    name: string;
    role: string;
    focus: string;
    gradient: string;
    image?: string;
    cv?: string;
}

const team: TeamMember[] = [
    {
        name: "Cristian Cala",
        role: "Full Stack Developer",
        focus: "Diseño interfaces de alto impacto que transforman visitas en clientes reales.",
        gradient: "from-nexlo-blue-deep via-nexlo-blue-mid to-nexlo-blue-light",
        image: "/team_cristian_cala.webp",
        cv: "/cvs/cristian_cala_cv.pdf",
    },
    {
        name: "Jose Sierra",
        role: "Full Stack Developer",
        focus: "Construyo arquitecturas sólidas y escalables que sostienen el crecimiento del negocio.",
        gradient: "from-nexlo-blue-mid via-nexlo-blue-light to-nexlo-blue-deep",
        image: "/team_jose_sierra.webp",
        cv: "/cvs/cv_jose_sierra.pdf",
    },
    {
        name: "Maikel Bello",
        role: "Full Stack Developer",
        focus: "Optimizo la lógica de negocio para garantizar productos rápidos, fiables y sin fricciones.",
        gradient: "from-nexlo-blue-deep to-nexlo-blue-mid",
    },
];
</script>

<template>
    <section class="bg-background py-24 lg:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
            <div class="max-w-2xl">
                <h2
                    class="text-3xl font-bold tracking-tight text-white sm:text-4xl lg:text-5xl"
                >
                    Un equipo que construye con visión de futuro
                </h2>
                <p class="mt-6 text-lg leading-relaxed text-slate-400">
                    Detrás de Nexlo hay profesionales enfocados en diseño,
                    desarrollo y operación web. No freelancers. No soluciones
                    improvisadas. Un equipo metódico con procesos probados.
                </p>
            </div>

            <div
                class="mt-16 grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-3"
            >
                <article
                    v-for="member in team"
                    :key="member.role"
                    :class="
                        cn(
                            'group flex flex-col items-center gap-6 rounded-2xl border border-white/10',
                            'bg-card p-8 text-center transition-all duration-300',
                            'hover:border-nexlo-blue-mid/40 hover:bg-nexlo-blue-deep/10',
                        )
                    "
                >
                    <div
                        :class="
                            cn(
                                'relative h-24 w-24 overflow-hidden rounded-full',
                                'shadow-lg shadow-nexlo-blue-deep/40',
                                'ring-2 ring-white/10 transition-all duration-300 group-hover:ring-nexlo-blue-mid/60',
                            )
                        "
                        role="img"
                        :aria-label="`Avatar de ${member.name}`"
                    >
                        <img
                            v-if="member.image"
                            :src="member.image"
                            :alt="`Foto de ${member.name}`"
                            class="h-full w-full cursor-pointer object-cover"
                            @click="openPreview(member)"
                        />
                        <template v-else>
                            <div
                                :class="
                                    cn(
                                        'h-full w-full bg-gradient-to-br',
                                        member.gradient,
                                    )
                                "
                            />
                            <div
                                class="absolute inset-0 opacity-30"
                                style="
                                    background: radial-gradient(
                                        circle at 35% 35%,
                                        oklch(1 0 0 / 0.4) 0%,
                                        transparent 60%
                                    );
                                "
                                aria-hidden="true"
                            />
                        </template>
                    </div>

                    <div class="flex flex-col gap-2">
                        <h3 class="text-lg font-semibold text-white">
                            {{ member.name }}
                        </h3>
                        <TooltipProvider v-if="member.cv">
                            <Tooltip>
                                <TooltipTrigger as-child>
                                    <a
                                        :href="member.cv"
                                        download
                                        class="text-sm font-medium text-nexlo-blue-light hover:underline"
                                    >
                                        {{ member.role }}
                                    </a>
                                </TooltipTrigger>
                                <TooltipContent>
                                    Descargar CV
                                </TooltipContent>
                            </Tooltip>
                        </TooltipProvider>
                        <p
                            v-else
                            class="text-sm font-medium text-nexlo-blue-light"
                        >
                            {{ member.role }}
                        </p>
                    </div>

                    <p class="text-sm leading-relaxed text-slate-400">
                        {{ member.focus }}
                    </p>
                </article>
            </div>
        </div>
    </section>

    <Teleport to="body">
        <Transition
            enter-active-class="transition-opacity duration-200"
            leave-active-class="transition-opacity duration-200"
            enter-from-class="opacity-0"
            leave-to-class="opacity-0"
        >
            <div
                v-if="preview"
                class="fixed inset-0 z-50 flex items-center justify-center bg-black/70 backdrop-blur-sm"
                @click.self="closePreview"
            >
                <Transition
                    enter-active-class="transition-all duration-200"
                    leave-active-class="transition-all duration-200"
                    enter-from-class="opacity-0 scale-90"
                    leave-to-class="opacity-0 scale-90"
                >
                    <div
                        v-if="preview"
                        class="relative overflow-hidden rounded-2xl shadow-2xl"
                    >
                        <img
                            :src="preview.src"
                            :alt="`Foto de ${preview.name}`"
                            class="h-80 w-80 object-cover sm:h-96 sm:w-96"
                        />
                        <button
                            class="absolute right-3 top-3 flex h-8 w-8 items-center justify-center rounded-full bg-black/50 text-white transition hover:bg-black/80"
                            aria-label="Cerrar vista previa"
                            @click="closePreview"
                        >
                            ✕
                        </button>
                    </div>
                </Transition>
            </div>
        </Transition>
    </Teleport>
</template>
