json.array!(@locations) do |location|
  json.extract! location, :id, :location, :address, :latitude, :longitude
  json.url location_url(location, format: :json)
end
