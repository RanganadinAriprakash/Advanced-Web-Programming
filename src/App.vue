<template>
  <SideBar/>
  <div :style="{'margin-left': sideBarWidth}"></div>
</template>

<script>
import SideBar from './components/sidebar/SideBar.vue'
import {sideBarWidth} from './components/sidebar/state.js'
export default {
  name: 'App',
  setup(){
    return {sideBarWidth}
  },
  components: {
    SideBar,
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
    position: absolute;
    margin-left: 325px ;
    z-index: 1;
    bottom: 10;
    padding: 0.5em;
    width: 7.5rem;
}
</style>