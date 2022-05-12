<template>
    <div class="catalog-books">
        <div class="book" v-for="book in filterBooks" :key="book.id">
            <div><img v-bind:src="book.bookImage" alt="Book" class="book-img" style=""></div>
            <div class="book-description">
            <span class="title-book">{{book.bookTitle}}</span><br>
            <span>{{book.bookAuthor}}</span>, <span>{{book.bookDateOfPublication}}</span>
            
            
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

.catalog-books{
    display:flex;
    flex-wrap: nowrap;
    background-color: blue;
    padding:1px;
    margin: 0px 1px 10px 60px;
    height: 200px;
    border-radius: 10px;
    overflow-x: auto;
    overflow-y: auto;
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
    flex-basis: 100%;
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
    font-size: 20px;
    font-weight: bold;
}



</style>