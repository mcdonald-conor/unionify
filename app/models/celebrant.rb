class Celebrant < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :username, prescene: true, uniqueness: true
  validates :location, prescence: true
  validates :rate, prescence: true
end
