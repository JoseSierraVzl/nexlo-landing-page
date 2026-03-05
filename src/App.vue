<script setup lang="ts">
import NavBar from "@/components/sections/NavBar.vue";
import HeroSection from "@/components/sections/HeroSection.vue";
import AboutSection from "@/components/sections/AboutSection.vue";
import ServicesSection from "@/components/sections/ServicesSection.vue";
import VisionSection from "@/components/sections/VisionSection.vue";
// import MetricsSection from "@/components/sections/MetricsSection.vue";
import TeamSection from "@/components/sections/TeamSection.vue";
import TestimonialsSection from "@/components/sections/TestimonialsSection.vue";
import CtaSection from "@/components/sections/CtaSection.vue";
import FooterSection from "@/components/sections/FooterSection.vue";
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
            <CtaSection />
        </main>
        <FooterSection />
    </div>
</template>
