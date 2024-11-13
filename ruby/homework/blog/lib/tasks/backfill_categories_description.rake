
namespace :categories do
    desc "Backfill descriptions for existing categories"
    task backfill_description: :environment do
      Category.find_each do |category|
        if category.description.blank?
          category.update(description: "default description")
          puts "description for: #{category.name}"
        end
      end
    end
  end
  
