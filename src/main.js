import { createApp } from 'vue'
import '@fortawesome/fontawesome-free/js/all'
import App from './App.vue'
import router from './router/index'


createApp(App).use(router).mount('#app')
