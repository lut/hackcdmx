json.array!(@places) do |place|
  json.extract! place, :id, :name, :latitude, :longitude, :category
  json.url place_url(place, format: :json)
end
