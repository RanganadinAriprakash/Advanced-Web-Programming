<template>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Logo_Efrei_2022.svg/1200px-Logo_Efrei_2022.svg.png" alt="EFREI PARIS" id="logo-efrei">
  <HomePage/>
  <SideBar/>
  <div :style="{'margin-left': sideBarWidth}"></div>
</template>

<script>
import HomePage from './components/HomePage.vue'
import SideBar from './components/sidebar/SideBar.vue'
import {sideBarWidth} from './components/sidebar/state.js'

export default {
  name: 'App',
  setup(){
    return {sideBarWidth}
  },
  components: {
    HomePage,
    SideBar
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  margin-top: 60px;
  color:white;
}

#logo-efrei{
    float: right;
    position: relative;
    z-index: 1;
    bottom: 10;
    padding: 0.5em;
    width: 7.5rem;
}
</style>
