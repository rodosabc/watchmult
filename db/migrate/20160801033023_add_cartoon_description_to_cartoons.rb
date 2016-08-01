class AddCartoonDescriptionToCartoons < ActiveRecord::Migration[5.0]
  def change
    add_column :cartoons, :cartoon_description, :text
  end
end
