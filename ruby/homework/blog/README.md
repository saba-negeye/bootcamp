# Blog App 
## A simple blog application where users can create, view, and edit articles. The app allows users to organize articles by categories and display descriptions of each category.

# Features
- Categories: You can create, edit, view, and delete categories. Each category has a description displayed in italics.
- Articles: You can create, edit, view, and delete articles. Articles can be associated with categories.
- Comments: You can create, edit, view, and delete comments on each article.
- Category Selection: When creating or editing an article, you can select a category from a dropdown list.
- Category Article Count: The number of articles in each category is displayed next to the category name.
- Authors: You can create, edit, view, and delete authors.
- Users: Different users are able to sign in and edit the blog.
- Donations: Users are able to donate to support the blog. Donations are handled by Stripe API. 

# Tasks
1. rake task needs to be run to back fill existing categoris with no description. run `rails categories:backfill_description`
2. rake task needs to be run to create 3 authors and assign them to existing 3 articles. run `rails db:assign_authors`


# Authentication 
- The app uses devise authentication to restrict access to certain actions. Only signed-in users can complete all actions. 


