namespace :tasks do
	require 'csv'

	desc "cargar lugares"
	task :load_places => :environment do |t, arg|
		places_file =['lib/datasets/places.csv']
		places_file.each do |place|
			CSV.foreach(place,:headers => true) do |row|
				name = row.to_hash['name']
				latitude = row.to_hash['latitude']
				longitude = row.to_hash['longitude']
				category = row.to_hash['category']
				
				Place.create(name: name, latitude: latitude, longitude: longitude, category: category )
			end	
		end	
	end	

	desc "cargar usuarios"
	task :load_usuarios => :environment do |t, arg|
		user_files =['lib/datasets/customers.csv']
		user_files.each do |user|
			CSV.foreach(user,:headers => true) do |row|
				id = row.to_hash['id']
				gender = row.to_hash['gender']
				age = row.to_hash['age']
				User.create(id: id,gender: gender,age: age)
			end	
		end	
	end	

	desc "cargar trips"
	task :load_trips => :environment do |t, arg|
		trips_file =['lib/datasets/trips_upload.csv']
		trips_file.each do |trip|
			CSV.foreach(trip,:headers => true) do |row|
				user_id = row.to_hash['user_id']
				bike_id = row.to_hash['bike_id']
				date_removed = row.to_hash['date_removed']
				station_removed = row.to_hash['station_removed']
				date_arrived = row.to_hash['date_arrived']
				station_arrived = row.to_hash['station_arrived']
				action = row.to_hash['action']
				Trip.create(user_id: user_id, bike_id: bike_id, date_removed: date_removed, station_removed: station_removed,
				            date_arrived: date_arrived, station_arrived: station_arrived, action: action)
			end	
		end	
	end	


end