class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :listings

  validates :start_date, presence: true
  validates :end_date, presence: true
end
