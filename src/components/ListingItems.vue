<template>
  <div class="search-container">
    <input class="searchbar" type="text" v-model="search" placeholder="Title, authors...">
  </div>
    <div class="catalog-books">
        <div class="book" v-for="book in filterBooks" :key="book.id">
            <div><img v-bind:src="book.bookImage" alt="Book" class="book-img" style=""></div>
            <div class="book-description">
            <span class="title-book">{{book.bookTitle}}</span><br>
            <span>{{book.bookAuthor}}</span>, <span>{{book.bookDateOfPublication}}</span><br><br>
            <span>{{book.bookDescription}}</span><br><br>
            
            <div v-if="book.nbCopies !== 0">
                <span style="font-weight: bold">Available: {{book.nbCopies}}</span><br><br>
                <button @click="test(book.id)">+</button>
            </div>
            <div v-else><span style="font-style: italic">Not available</span></div>
            
            </div>
        </div>
    </div>
</template>

<script>
import {books} from "../components/data/Books"

export default {
    name:"ListingItems",
    data () {
        return {
            search: "",
            books
        }
    },
    computed: {
        filterBooks(){
            return this.books.filter(book => book.bookTitle.includes(this.search) || book.bookAuthor.includes(this.search))
        },
    },
    methods: {
        test(index) {
            this.books[index].nbCopies--;

        },
    }
}
</script>

<style scoped>

.search-container{
    margin: -50px 100px 10px 65px;
    position: relative;
    width: 500px;
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
.catalog-books{
    background-color: #F1F1F1;
    padding:1px;
    margin: 0px 1px 10px 60px;
    height: 830px;
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



</style>

