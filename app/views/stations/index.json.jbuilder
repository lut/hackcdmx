json.array!(@stations) do |station|
  json.extract! station, :id, :name, :address, :addressNumber, :zipCode, :districtCode, :districtName, :location, :stationType
  json.url station_url(station, format: :json)
end
