<template>
  <div class="flexing">
    <component1/>
    <cart/>
  </div>
</template>

<script>
import ListingItems from "./ListingItems.vue"
import Cart from "./Cart.vue"
export default {
  name: 'HomePage',
  components:{
    component1: ListingItems,
    cart: Cart
  },
  props: {
    msg: String
  },

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}

.flexing{
  display: flex;
  flex-wrap: wrap;
  justify-content: left;
}
</style>
