class AddParentToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :category, foreign_key: true
  end
end
