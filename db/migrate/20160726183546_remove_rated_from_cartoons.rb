class RemoveRatedFromCartoons < ActiveRecord::Migration[5.0]
  def change
    remove_column :cartoons, :rated, :integer
  end
end
