class Listing < ApplicationRecord
  belongs_to :users
  has_many :bookings

  validates :category, presence: true
  validates :price, presence: true
end
