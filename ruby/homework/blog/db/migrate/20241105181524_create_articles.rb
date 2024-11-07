class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.refrences :category, null: false, foreign_key
      
      t.timestamps
    end
  end
end
