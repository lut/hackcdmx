json.array!(@events) do |event|
  json.extract! event, :id, :name, :place_id, :date_time
  json.url event_url(event, format: :json)
end
