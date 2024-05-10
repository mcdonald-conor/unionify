class Celebrant < ApplicationRecord
  belongs_to :user

  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
  
  #validates :username, prescence: true, uniqueness: true
  #validates :location, prescence: true
  #validates :rate, prescence: true
end
