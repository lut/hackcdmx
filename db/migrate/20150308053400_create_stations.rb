class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :addressNumber
      t.string :zipCode
      t.string :districtCode
      t.string :districtName
      t.string :location
      t.string :stationType

      t.timestamps
    end
  end
end
