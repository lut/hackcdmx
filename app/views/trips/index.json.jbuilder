json.array!(@trips) do |trip|
  json.extract! trip, :id, :customer_id, :bike_id, :date_removed, :station_removed, :date_arrived, :station_arrived, :action
  json.url trip_url(trip, format: :json)
end
