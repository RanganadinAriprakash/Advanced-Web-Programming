<template>
  <div class="search-container">
        <input class="searchbar" type="text" v-model="search" placeholder="Title, authors...">
  </div>
  <h1><span id="catalog-title">Catalog</span></h1><br><br><br>
  <div class="flexing">
    <div class="catalog-books">
      <div class="book" v-for="(book, index) in filterBooks" :key="index">
          <div><img v-bind:src="book.bookImage" alt="Book" class="book-img" style=""></div>
          <div class="book-description">
            <span class="title-book">{{book.bookTitle}}</span><br>
            <span>{{book.bookAuthor}}</span>, <span>{{book.bookDateOfPublication}}</span><br><br>
            <span>{{book.bookDescription}}</span><br><br>
            
            <div v-if="book.nbCopies !== 0 ">
                <span style="font-weight: bold">Available: {{book.nbCopies}}</span><br><br>
                <button @click="test(book.id)">+</button>
            </div>
            <div v-else><span style="font-style: italic">Not available</span></div>
          </div>
          <div>
          <button @click="deleteBook(index)"></button>
          </div>
      </div>
    </div>
    <!--Là c'est l'enfant-->
    <cart :passData="passData" @add-to-catalog="addToCatalogFromCart($event)"/>
    <formu @add-to-catalog="addToCatalogFromForm($event)"/>
    

  </div>
</template>

<script>
import {books} from "../components/data/Books"
import Cart from "./Cart.vue"
import Form from "./FormAddingBook.vue"
export default {
  name: 'HomePage',
  components:{
    cart: Cart,
    formu: Form
  },
  data (){
    return{
      search: "",
      books,
      book_cart: []
    }
  },
  computed:{
      filterBooks(){
          return this.books.filter(book => book.bookTitle.includes(this.search) || book.bookAuthor.includes(this.search))
      },
  },
  methods:{
    test(index){
      this.books[index].nbCopies--;
      this.books[index].quantityTaken++;
      this.book_cart.push(this.books[index])
    },
    passData(){
      return this.book_cart
    },
    addToCatalogFromCart(book){
      for (var i = 0; i < this.books.length; i++){
        if (books[i].bookAuthor == book.bookAuthor && books[i].bookTitle == book.bookTitle){
          console.log("ouai c'et passé"+ this.books[i])
          this.books[i].nbCopies++;
          this.books[i].quantityTaken--;
          break;
        }
      }
    },
    addToCatalogFromForm(book){
      console.log(book)
    },
    deleteBook(data){
      this.books.splice(data, 1)
    }

  }

}
</script>

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

#catalog-title{
  color:black;
  float: left;
  margin-left: 100px;
}


.search-container{
    margin: -50px 100px 10px 65px;
    position: relative;
    width: 700px;
    height: 40px;
    vertical-align: middle;
    border: 3px solid var(--general-color-lightOrange);
    border-radius: 30px;
}

.searchbar{
    border:none;
    margin: 3px 5px;
    float: left;
    height: 80%;
    width: 95%;
    padding: 0px 5px;
    border-radius: 50px;
    font-size: 16px;
}

.searchbar:focus{
    outline: none;
}

.container-of-all{
  background-color: aqua;
}

.catalog-books{
    flex-basis:60%;
    background-color: #F1F1F1;
    padding: 1px;
    margin: 0px 10px 10px 70px;
    width: 1200px;
    height:750px;
    border-radius: 10px;
    overflow-x: hidden;
    overflow-y:auto;
}

.book{
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
    width: 180px;
    max-width: 90%;
    height: auto;
    padding: 10px;
    text-align: center;
    flex-basis: 100%;
}
.book-description{
    padding: 10px;
    text-align: justify;
    flex-basis: 100%;
}

.title-book{
    font-size: 40px;
    font-weight: bold;
}

.flexing{
  display: flex;
  flex-wrap: wrap;
  justify-content:flex-start;
}

</style>
