class Category < ApplicationRecord
    has_many :articles
    has_one_attached :image
    validates :name, presence: true, uniqueness: true
end
