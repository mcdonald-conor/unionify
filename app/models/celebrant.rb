class Celebrant < ApplicationRecord
  belongs_to :user, through => :bookings
  has_many :bookings

  #validates :username, prescence: true, uniqueness: true
  #validates :location, prescence: true
  #validates :rate, prescence: true
end
