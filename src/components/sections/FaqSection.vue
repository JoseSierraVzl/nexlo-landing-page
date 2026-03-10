<script setup lang="ts">
import { ref } from 'vue'
import { ChevronDown } from 'lucide-vue-next'
import { cn } from '@/lib/utils'

interface FaqItem {
    question: string
    answer: string
}

const faqs: FaqItem[] = [
    {
        question: '¿Cuánto cuesta crear y mantener un sitio web profesional?',
        answer: 'Los planes de Nexlo inician desde 119 USD de implementación + 21.99 USDT al mes. La mensualidad cubre hosting, SSL, mantenimiento activo, soporte y cambios mensuales. Sin costos ocultos.',
    },
    {
        question: '¿Puedo tener un sitio web profesional sin saber de programación?',
        answer: 'Sí. Nexlo se encarga de todo el proceso: diseño, desarrollo, publicación y mantenimiento. Solo necesitas entregarnos tu información —logo, textos, fotos— y nosotros construimos el sitio completo.',
    },
    {
        question: '¿Qué incluye el servicio de Nexlo?',
        answer: 'Diseño personalizado con tu branding, desarrollo profesional, publicación, hosting, SSL, dominio por un año, mantenimiento mensual, soporte continuo y cambios mensuales según tu plan.',
    },
    {
        question: '¿Qué pasa si necesito hacer cambios en el sitio?',
        answer: 'Cada plan incluye requerimientos mensuales para cambios como textos, imágenes, productos e información de contacto. Si superas el límite del plan, puedes solicitar mantenimiento extendido por 19 USD.',
    },
    {
        question: '¿Nexlo funciona para cualquier tipo de negocio?',
        answer: 'Sí. Nexlo está pensado para restaurantes, cafeterías, gimnasios, consultorios, abogados, inmobiliarias, tiendas y cualquier negocio que necesite presencia profesional en internet.',
    },
    {
        question: '¿Qué pasa si dejo de pagar la mensualidad?',
        answer: 'Con 7 días de retraso el sitio se suspende temporalmente. Con 30 días de retraso el sitio se elimina. El servicio permanece activo mientras la mensualidad esté al día.',
    },
]

const openIndex = ref<number | null>(null)

function toggle(i: number) {
    openIndex.value = openIndex.value === i ? null : i
}
</script>

<template>
    <section id="preguntas" class="bg-card/30 py-24 lg:py-32">
        <div class="mx-auto max-w-3xl px-6 lg:px-8">
            <div class="text-center">
                <h2
                    class="text-3xl font-bold tracking-tight text-white sm:text-4xl"
                >
                    Preguntas frecuentes
                </h2>
                <p class="mt-4 text-lg text-slate-400">
                    Todo lo que necesitas saber antes de empezar.
                </p>
            </div>

            <dl class="mt-12 flex flex-col gap-3">
                <div
                    v-for="(faq, i) in faqs"
                    :key="faq.question"
                    :class="
                        cn(
                            'rounded-xl border border-white/10 bg-background transition-colors duration-200',
                            openIndex === i && 'border-nexlo-blue-mid/40',
                        )
                    "
                >
                    <dt>
                        <button
                            type="button"
                            :aria-expanded="openIndex === i"
                            :aria-controls="`faq-answer-${i}`"
                            :id="`faq-question-${i}`"
                            class="flex w-full items-center justify-between gap-4 px-6 py-5 text-left"
                            @click="toggle(i)"
                        >
                            <span class="text-base font-medium text-white">{{
                                faq.question
                            }}</span>
                            <ChevronDown
                                :class="
                                    cn(
                                        'size-5 shrink-0 text-nexlo-blue-light transition-transform duration-200',
                                        openIndex === i && 'rotate-180',
                                    )
                                "
                                aria-hidden="true"
                            />
                        </button>
                    </dt>
                    <dd
                        :id="`faq-answer-${i}`"
                        :aria-labelledby="`faq-question-${i}`"
                        v-show="openIndex === i"
                        class="px-6 pb-5 text-sm leading-relaxed text-slate-400"
                    >
                        {{ faq.answer }}
                    </dd>
                </div>
            </dl>
        </div>
    </section>
</template>
