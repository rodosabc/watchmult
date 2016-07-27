class AddPartToCartoons < ActiveRecord::Migration[5.0]
  def change
    add_column :cartoons, :part, :integer
  end
end
