
namespace :categories do
    desc "Backfill descriptions for existing categories"
    task backfill_description: :environment do
      Category.find_each do |category|
        if category.description.blank?
          category.update(description: "default description")
        end
      end
    end
  end
  
