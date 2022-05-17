import { createRouter, createWebHistory } from 'vue-router'
import HomePage from '../components/HomePage.vue'
import Profil_Item from '../components/Profil_Item.vue'
import login_item from '../components/login_item.vue'
import register_item from '../components/register_item.vue'
import logout_success from '../components/logout_success.vue'
import register_success from '../components/register_success.vue'
import login_success from '../components/login_success.vue'
import profile_login from '../components/profile_login.vue'

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
    },
    {
        name: 'login_item',
        path: '/login_item',
        component: login_item 
    },
    {
        name: 'register_item',
        path: '/register_item',
        component: register_item 
    },
    {
        name: 'logout_success',
        path: '/logout_success',
        component: logout_success 
    },
    {
        name: 'register_success',
        path: '/register_success',
        component: register_success 
    },
    {
        name: 'login_success',
        path: '/login_success',
        component: login_success 
    },
    {
        name: 'profile_login',
        path: '/profile_login',
        component: profile_login 
    }
 
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
