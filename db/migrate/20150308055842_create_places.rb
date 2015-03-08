class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :category

      t.timestamps
    end
  end
end
