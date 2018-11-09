class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.integer :sender
      t.string :status

      t.timestamps
    end
  end
end
