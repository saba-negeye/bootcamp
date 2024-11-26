console.log("Jquery is loaded")

$(document).ready(function () {
    const toggleButton = $("#toggle-content-button");
    const content = $("#article-content");

    toggleButton.on("click", function () {
        if (content.css("display") === "none") {
            content.css("display", "block");
            toggleButton.text("Hide Content");
        } else {
            content.css("display", "none");
            toggleButton.text("Show Content");
        }
    });
});
    // Dynamic content loading for comments
    $('#load-comments').on('click', function() {
        const categoryId = $('#category-id').data('category');
        const articleId = $('#load-comments').data('article');

        const url = `/categories/${categoryId}/articles/${articleId}/comments`;
        console.log($.getJSON(url));
        $.getJSON(url, function(data){
            console.log(data);
            // Append the new comments to the container #comments
        })
            // add .fail callback to handle error messaging
        });
