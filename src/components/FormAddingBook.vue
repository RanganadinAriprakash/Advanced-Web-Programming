<template>
    <div>
        <form id="form-add-book">
            <input type="text" name="book-title" id="book-title" placeholder="Title">
            <input type="text" name="book-author" id="book-author" placeholder="Author">
            <input type="text" name="book-image" id="book-img" placeholder="url">
            <input type="text" name="date-of-pub" id="date-of-pub" placeholder="Date of publication (year only)"><br>
            <input type="text" name="book-description" id="book-description" placeholder="Description">
            <input type="text" id="nbCopies" placeholder="nbCopies">
            <button @click.prevent="addBook">Add book</button>
        </form>
    
    
    
    </div>
</template>



<script>
export default {
    data() {
        return {
            new_books: {
                id: "-1",
                bookTitle: "",
                bookImage: "",
                bookAuthor: "",
                bookDateOfPublication: "", 
                bookDescription: "",
                nbCopies : 0,
                quantityTaken: 0
            }
        }
    },
    methods:{
        addBook(){
            this.new_books[1] = document.getElementById("book-title").value
            this.new_books[3] = document.getElementById("book-author").value
            this.new_books[2] = document.getElementById("book-img").value
            this.new_books[4] = document.getElementById("date-of-pub").value
            this.new_books[5] = document.getElementById("book-description").value
            this.new_books[6] = document.getElementById("nbCopies").value
            this.$emit('add-to-catalog', this.new_books)
        }
    }
}
</script>

<style scoped>

</style>