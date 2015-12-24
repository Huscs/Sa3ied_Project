class Location < ActiveRecord::Base

  validates :location, presence: true
 
  VALID_EMAIL_REGEX=/\b(\d{2,5}\s+)?(([a-zA-Z|\s+]{1,30}){1,4})(court|ct|street|st|drive|dr|lane|ln|road|rd|blvd)/i
  validates :address, presence: true,format: {with: VALID_EMAIL_REGEX}

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
