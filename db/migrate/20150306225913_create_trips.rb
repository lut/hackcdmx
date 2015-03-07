class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :customer_id
      t.integer :bike_id
      t.datetime :date_removed
      t.integer :station_removed
      t.datetime :date_arrived
      t.integer :station_arrived
      t.string :action

      t.timestamps
    end
  end
end
