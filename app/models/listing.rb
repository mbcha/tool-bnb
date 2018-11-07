class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :category, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader
end
