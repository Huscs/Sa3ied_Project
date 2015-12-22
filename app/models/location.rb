class Location < ActiveRecord::Base

  validates :location, presence: true
  validates :address, presence: true
	geocoded_by :address
	after_validation :geocode

end
