import Vue from 'vue/dist/vue.esm'
import VModal from 'vue-js-modal';
Vue.use(VModal);
import Home from '../../views/static/home.vue'

document.addEventListener('DOMContentLoaded', () => {
    const app = new Vue({
        el: '#vue',
        components: { Home }
    })
})