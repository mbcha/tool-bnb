class Message < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :title, presence: true
  validates :content, presence: true
end
