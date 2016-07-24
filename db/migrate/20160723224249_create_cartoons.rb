class CreateCartoons < ActiveRecord::Migration[5.0]
  def change
    create_table :cartoons do |t|
      t.string :title
      t.string :description
      t.string :cartoon_url
      t.float :rating
      t.integer :views
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
