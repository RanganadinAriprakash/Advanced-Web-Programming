<template>
    <div class="sidebar" :style="{width: sideBarWidth}">
        <h1>
            <span v-if="collapsed">Menu</span>
        </h1>
    <span class="collapse-icon" :class="{'rotate-180' : collapsed}" @click="toggleSideBar">
    <i class="fas fa-angle-double-left"></i>
    </span>
    
    </div>
    
</template>

<script>
import {collapsed, toggleSideBar, sideBarWidth} from './state'
export default {
    setup() {
        return {collapsed, toggleSideBar, sideBarWidth}   
    }
}
</script>


<style>
:root{
    --general-color-darkBlue:#2D519F;
    --gereral-color-lightBlue:#008BD2;
    --general-color-lightOrange:#F19816;
    /*and white*/
}
</style>

<style scoped>
.sidebar{
    color : white;
    background-color: var(--general-color-darkBlue);

    float: left;
    position: fixed;
    z-index: 1;
    top: 5px;
    left: 5px;
    bottom: 5px;
    padding: 0.5em;
    width: 5em;
    border-radius: 10px;

    transition: 0.5s ease; 
    
    display: flex;
    flex-direction: column;
    box-shadow: 4px 3px 8px 1px #414141;
    
}


.collapse-icon{
    position: absolute;
    bottom: 0;
    padding: 0.75em;

    color: #c1c1c1;
    transition: 0.5s ease;

}

.collapse-icon:hover{
    color:white;
}


.rotate-180{
    transform: rotate(180deg);
    transition: 0.2s linear;
    
}

</style>