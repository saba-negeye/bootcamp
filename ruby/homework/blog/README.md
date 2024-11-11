# Blog App 
## A simple blog application where users can create, view, and edit articles. The app allows users to organize articles by categories and display descriptions of each category.

# Features
- Categories: You can create, edit, view, and delete categories. Each category has a description displayed in italics.
- Articles: You can create, edit, view, and delete articles. Articles can be associated with categories.
- Comments: You can create, edit, view, and delete comments on each article.
- Category Selection: When creating or editing an article, you can select a category from a dropdown list.
- Category Article Count: The number of articles in each category is displayed next to the category name.

# Tasks
1. ake task needs to be run to back fill existing categoris with no description. run rails categories:backfill_description

# Authentication 
- The app uses basic authentication to restrict access to certain actions. Only signed-in users can create, edit, and delete categories and articles.

