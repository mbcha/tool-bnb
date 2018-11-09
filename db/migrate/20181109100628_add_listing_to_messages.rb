class AddListingToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :listing, foreign_key: true
  end
end
