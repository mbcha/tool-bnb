class AddAvailableToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :available, :boolean, default: true
  end
end
