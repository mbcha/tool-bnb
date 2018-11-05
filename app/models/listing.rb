class Listing < ApplicationRecord
  belongs_to :users

  validates :category, presence: true
  validates :price, presence: true
end
