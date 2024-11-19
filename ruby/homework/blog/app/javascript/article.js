console.log("toggle js file ")
// Create the button element
const articleInfo = document.getElementById("article-toggle")
articleInfo.style.display = "none"
const button = document.createElement('button');
// Set button text
button.textContent = 'More info!'
// Add an event listener to handle clicks
button.addEventListener('click', () => {
    if (articleInfo.style.display === 'none') {
        articleInfo.style.display = 'block';
    } else{
    articleInfo.style.display = 'none'
    }
})


// Append the button to the container
const container = document.getElementById("article-title")
container.appendChild(button);