
namespace :categories do
    desc "Backfill descriptions for existing categories"
    task backfill_description: :environment do
      Category.find_each do |category|
        if category.description.blank?
          category.update(description: "default description")
          puts "Updated description for category: #{category.name}"
        end
      end
    end
  end
  
