class RemoveDescriptionFromCartoons < ActiveRecord::Migration[5.0]
  def change
    remove_column :cartoons, :description, :string
  end
end
