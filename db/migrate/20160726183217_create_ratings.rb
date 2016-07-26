class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.float :value ,:default => 0
      t.integer :one ,:default => 0
      t.integer :two ,:default => 0
      t.integer :three ,:default => 0
      t.integer :four ,:default => 0
      t.integer :five ,:default => 0
      t.references :cartoon, foreign_key: true

      t.timestamps
    end
  end
end
