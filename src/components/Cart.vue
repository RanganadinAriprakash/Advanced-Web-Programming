<template>
    <div class="cart-container">
        <h1><span class="title-cart">Cart</span></h1>
        <div v-for="(book, index) in passData()" :key=(index)>
            <span style="color: black">{{book.bookTitle}}</span>
            <span style="color: black">{{book.quantityTaken}}</span>
            <button @click="removeFromCart(book, index)">-</button>
        </div>
    </div>
</template>

<script>

export default {
    name:"CartItem",
    setup(){

    },
    props:{
        books: Array,
        test: String,
        passData: Function
    },
    data () {
        return {
            book_cart: this.passData()
        }
    },
    methods:{
        removeFromCart(book, index){
            this.$emit("add-to-catalog", book)
            this.book_cart.pop(index)
        }

    }

}
</script>

<style scoped>

.cart-container{
    flex-basis: 30%;
    background-color: #F1F1F1;
    padding: 20px;
    margin: 0px 33px 65px;
    height: 300px;
    border-radius: 10px;
    overflow-y :auto;

}

.cart-books{
    margin: 10px 10px 10px 10px;
    padding: 20px; 
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-evenly;
    width: auto;
    border-radius: 10px;
    background-color: var(--gereral-color-lightBlue);
    box-shadow: 1px 2px 5px 1px #414141;
}

.book-img{
    width: 120px;
    max-width: 90%;
    padding: 1px;
    text-align: center;
    flex-basis: 100%;
}
.book-description{
    padding: 10px;
    text-align: justify;
    flex-basis: 100%;
}

.title-book{
    font-size: 16px;
    font-weight: bold;
}

.title-cart{
    color: black;
}


</style>