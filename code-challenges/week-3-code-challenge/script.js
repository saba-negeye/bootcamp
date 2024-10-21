
$(function () {
    // add click function & logic for AJAX request here
    // do not forget to hide API key 
    //user input for movie details and store values to local storage 
    //show details on page
    //fetch movie data from api based on title 
    //display movie poster

    $("#submit").click(function () {
        //This stores the user inputs for movie
        var title = $("#title").val();
        var genre = $("#genre").val();
        var year = $("#year").val();
        var URL = "http://www.omdbapi.com/?apikey="+ apiKey + "&t=";

        //creating list if doesnt exist, adding if it does
        if(localStorage.movieList){
            var movieList = JSON.parse(localStorage.movieList);
        }
        else{
            var movieList = [];
        }

        //create movie object
        var movie ={
            title: title,
            genre:genre,
            year: year
        };

        //storing object in list and storing in local storage  
        movieList.push(movie);
        localStorage.setItem('movieList', JSON.stringify(movieList));


        //grabbing movie from movie list and displaying
        // function displayMovieList(first, last) {
        //     for (var i = 0; i < movieList.length; i++) {
        //         if (movieList[i].title === first && movieList[i].genre === movieList[i].year) {
        //             // Display movie details
        //             $("#movie-list").text( movieList[i].title + " " + movieList[i].genre + ", Number: " + movieList[i].year);
        //             return;
        //         }
        //     }
        // }

        function displayMovieList(movieList, movie){
            
            for( var title in movieList){
                if(movieList[title]){
                    $("#movie-list").append(movie)
                }
            }
            
            
        }

        displayMovieList();

        //api call 
        $.ajax({
            url: URL +   title,
            method: "GET",
            success: function(data){
               if(data.Response === "True"){
                $("#movie-data").append(data.Poster), (data.Title),(data.Genre);
               }else 
               $("#movie-data").append("Movie not found");

            },
            //error handling
            error: function(xhr, status, error){
                $("#movie.data").append("Error retrieving movie data: " + status + " - " + error);

            }
            
        })
    })

});