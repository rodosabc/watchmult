class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :name
      t.string :email
      t.references :cartoon, foreign_key: true
      t.timestamps
    end
  end
end
