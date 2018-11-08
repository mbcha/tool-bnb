class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :category, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader
end
