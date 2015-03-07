json.array!(@users) do |user|
  json.extract! user, :id, :id, :gender, :age
  json.url user_url(user, format: :json)
end
