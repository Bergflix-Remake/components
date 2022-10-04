<script lang="ts">
    import type { LayoutData } from './$types';
    import '../app.css'
    export let data: LayoutData;
</script>


<div class="flex flex-col justify-center items-center min-h-screen w-full bg-clean-dark">
    <slot/>
</div>