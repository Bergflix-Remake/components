<script lang="ts">
	import Logo from './Logo.svelte';
	import NavLink from '../organisms/NavLink.svelte';
	import { onMount } from 'svelte';
	let links: { name: string; href: string; icon: string; active?: boolean }[] = [
		{ name: 'Home', href: '/', icon: 'bx:home' },
		{ name: 'Serien', href: '/series', icon: 'bx:tv' },
		{ name: 'Filme', href: '/movies', icon: 'bx:movie' }
	];
	onMount(() => {
		const currentPath = window.location.pathname;
		links.forEach((link) => {
			if (link.href === currentPath) {
				link.active = true;
			}
		});
		links = [...links];
		console.debug(links);
	});
	let innerWidth: number;
</script>

<svelte:window bind:innerWidth />

<div class="navbar">
	{#if innerWidth > 768}
		<Logo />
	{/if}
	<nav class="justify-evenly md:justify-start md:space-x-5">
		{#each links as link}
			<NavLink {link} />
		{/each}
	</nav>
</div>

<style lang="postcss">
	.navbar {
		@apply w-full min-h-fit fixed md:bg-gradient-to-b from-black via-black to-transparent bg-gradient-to-t flex flex-col md:flex-row items-center p-6 md:top-0 md:bottom-auto bottom-0;
	}
	nav {
		@apply flex flex-row w-full  ml-5;
	}
</style>
