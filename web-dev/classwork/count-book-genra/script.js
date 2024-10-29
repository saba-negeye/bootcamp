const books = {
    book1: { title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Fiction" },
    book2: { title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Fiction" },
    book3: { title: "1984", author: "George Orwell", genre: "Science Fiction" },
    book4: { title: "Pride and Prejudice", author: "Jane Austen", genre: "Fiction" },
    book5: { title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy" }
};

// follow the instructions provided in the README to solve this
    //create countbooksgenre function takes in object and genre 
    //returns number of books
    //click function 

//rukias solution with 1 functionn 
// $(document).ready(function () {
//     $("#countBooksButton").click(function () {
//         var selectedGenre = $(genreSelector).val();

//         var resultElement = $("#result");

//         var count = 0;
//         for (var book in books) {
//             if (books[book].genre === selectedGenre) {
//                 count++;
//             }

//       }
//       resultElement.text(`Number of ${selectedGenre} books: ${count}`);
//     });
    
    
// })




$(function () {
        $("#countBooksButton").click(function(){ 
        var selectedGenre = $(genreSelector).val();
        var resultElement = $("#result");
        var bookCount = countBooksByGenre(books, selectedGenre);
        resultElement.text(`Number of ${selectedGenre} books: ${bookCount}`);

        }
    });



function countBooksByGenre(books,genre){
    var count = 0;
        for (var book in books) {
            if (books[book].genre === genre) {
                count++;
            }
        }
        return count;

};

