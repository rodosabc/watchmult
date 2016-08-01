class AddDescriptionAndKeywordsToCartoons < ActiveRecord::Migration[5.0]
  def change
    add_column :cartoons, :description, :text
    add_column :cartoons, :keywords, :text
  end
end
