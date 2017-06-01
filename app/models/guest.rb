class Guest < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :rooms, through: :reservations
  validates_uniqueness_of :username
end
