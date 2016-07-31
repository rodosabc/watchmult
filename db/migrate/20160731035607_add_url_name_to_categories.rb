class AddUrlNameToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :category_url_name, :string
  end
end
