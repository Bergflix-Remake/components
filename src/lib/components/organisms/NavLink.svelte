<script lang="ts">
	import Icon from '@iconify/svelte';
	import { onMount } from 'svelte';
	export let link: { name: string; href: string; icon: string; active?: boolean };
</script>

<a class="link {link.active ? 'text-primary' : 'md:text-delorean text-white'}" href={link.href}>
	<span class="icon">
		<Icon icon={link.icon} class="w-full h-full" />
	</span>
	<span class="text">{link.name}</span>
</a>

<style lang="postcss">
	.link {
		@apply font-thin text-xl transition-all flex items-center hover:text-primary-300;
	}
	.icon {
		@apply mr-2 block md:hidden w-7 h-7;
	}
	.text {
		@apply hidden md:block;
	}
</style>
