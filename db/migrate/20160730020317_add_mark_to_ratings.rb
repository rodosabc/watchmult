class AddMarkToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :mark, :string
  end
end
