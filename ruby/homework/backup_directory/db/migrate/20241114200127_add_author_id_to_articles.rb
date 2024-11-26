class AddAuthorIdToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :author_id, :integer
  end
end
