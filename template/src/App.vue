<template>
	<div id="app">
		<transition name='fade'>
			<router-view/>
		</transition>
	</div>
</template>

<script>
	import store from './store'

	export default {
		name: 'app',
		store
	}
</script>

<style lang='less'>
	#app {
		font-family: 'Avenir', Helvetica, Arial, sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
		text-align: center;
		color: #2c3e50;
		margin-top: 60px;
	}
</style>
