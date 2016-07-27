class RemoveCategoryFromCartoons < ActiveRecord::Migration[5.0]
  def change
    remove_reference :cartoons, :category, foreign_key: true
  end
end
