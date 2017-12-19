<template>
	<div id="app">
		<router-view/>
	</div>
</template>

<script>
	import store from './store'

	export default {
		name: 'app',
		store,
		components: {
			HeadNav
		}
	}
</script>
