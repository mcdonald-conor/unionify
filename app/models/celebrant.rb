class Celebrant < ApplicationRecord
  belongs_to :user
  #validates :username, prescence: true, uniqueness: true
  #validates :location, prescence: true
  #validates :rate, prescence: true
end
