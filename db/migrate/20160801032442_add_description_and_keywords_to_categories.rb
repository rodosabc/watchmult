class AddDescriptionAndKeywordsToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :description, :text
    add_column :categories, :keywords, :text
  end
end
