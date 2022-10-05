<script lang="ts">
    import type { LayoutData } from './$types';
    import '../app.css'
    import '../assets/font.css'
    export let data: LayoutData;
</script>


<div class="layout">
    <slot/>
</div>

<style lang="postcss">
    .layout {
        @apply flex flex-col justify-center items-center min-h-screen w-full bg-clean-dark;
    }
</style>