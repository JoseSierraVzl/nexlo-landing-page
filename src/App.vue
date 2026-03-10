<script setup lang="ts">
import { defineAsyncComponent } from "vue";
import NavBar from "@/components/sections/NavBar.vue";
import HeroSection from "@/components/sections/HeroSection.vue";

const AboutSection = defineAsyncComponent(() => import("@/components/sections/AboutSection.vue"));
const ServicesSection = defineAsyncComponent(() => import("@/components/sections/ServicesSection.vue"));
const VisionSection = defineAsyncComponent(() => import("@/components/sections/VisionSection.vue"));
const TeamSection = defineAsyncComponent(() => import("@/components/sections/TeamSection.vue"));
const TestimonialsSection = defineAsyncComponent(() => import("@/components/sections/TestimonialsSection.vue"));
const FaqSection = defineAsyncComponent(() => import("@/components/sections/FaqSection.vue"));
const CtaSection = defineAsyncComponent(() => import("@/components/sections/CtaSection.vue"));
const FooterSection = defineAsyncComponent(() => import("@/components/sections/FooterSection.vue"));
</script>

<template>
    <div class="min-h-screen bg-background text-foreground antialiased">
        <NavBar />
        <main>
            <HeroSection />
            <AboutSection />
            <ServicesSection />
            <VisionSection />
            <!-- <MetricsSection /> -->
            <TeamSection />
            <TestimonialsSection />
            <FaqSection />
            <CtaSection />
        </main>
        <FooterSection />
    </div>
</template>
