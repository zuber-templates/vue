// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import {sync} from 'vuex-router-sync'
import store from './store'
import router from './router'
// style
import './style/core.less'

Vue.config.productionTip = false
console.log(process.argv[process.argv.length-1])

/* eslint-disable no-new */
sync(store, router)
new Vue({
	el: '#app',
	router,
	template: '<App/>',
	components: { App }
})
window.router = router
