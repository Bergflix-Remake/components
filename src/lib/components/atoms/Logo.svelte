<script lang="ts">
	export let large = true;
	export let text: 'text-2xl' | 'text-3xl' | 'text-4xl' | 'text-5xl' = 'text-4xl';

</script>

<h1 class="logo">  <!-- Dont extract to class, breaks component -->
	{#if large}
		<span class="{text}">Bergflix</span>
	{:else}
		<span class="{text}">Bf</span>
	{/if}
	<span class="dot {text}">.</span>
</h1>

<style lang="postcss">
    .logo {
        @apply text-white font-bold flex flex-row items-end;
    }
    .dot {
        @apply text-primary font-black
    }
</style>
