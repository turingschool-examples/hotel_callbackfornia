class Room < ApplicationRecord
  belongs_to :hotel
  has_many :reservations
  has_many :guests, through: :reservations

  enum status: ["open", "booked"]
end
