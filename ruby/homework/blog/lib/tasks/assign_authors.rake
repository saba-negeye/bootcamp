namespace :db do
    desc "add three authors and assign existing articles to them"
    task assign_authors: :environment do
     #creating authors
      author1 = Author.create(name: "JK Rowling ")
      author2 = Author.create(name: "James Baldwin")
      author3 = Author.create(name: "William Shakespear")
  
      # Assigning articles
      Article.first.update(author: author1)
      Article.second.update(author: author2)
      Article.third.update(author: author3)

    #   Category.find_each do |category|
    #     if article.author.blank?
    #       article.update(author: "default description")
    end
  end
  