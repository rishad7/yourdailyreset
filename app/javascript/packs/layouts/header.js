import Vue from 'vue/dist/vue.esm'
import SiteHeader from '../../views/layouts/header.vue'

document.addEventListener('DOMContentLoaded', () => {
    const app = new Vue({
        el: '#header',
        components: { SiteHeader }
    })
})