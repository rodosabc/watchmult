class AddRatedToCartoons < ActiveRecord::Migration[5.0]
  def change
    add_column :cartoons, :rated, :integer, :default => 0
  end
end
