import { createRouter, createWebHistory } from 'vue-router'
import HomePage from '../components/HomePage.vue'
import Profil_Item from '../components/Profil_Item.vue'

const routes = [
    {
        name: 'Home',
        path: '/',
        component: HomePage 
    },
    {
        name: 'Profil',
        path: '/profil',
        component: Profil_Item 
    }
 
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
