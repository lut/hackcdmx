class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :gender
      t.integer :age

      t.timestamps
    end

    add_column :trips, :user_id, :integer
    remove_column :trips, :customer_id

  end
end
