class AddUrlNameToCartoons < ActiveRecord::Migration[5.0]
  def change
    add_column :cartoons, :url_name, :string
  end
end
