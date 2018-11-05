class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :category
      t.text :description
      t.integer :price
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
