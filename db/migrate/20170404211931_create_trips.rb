class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :trip_id
      t.integer :driver_id
      t.integer :rider_id
      t.date :date
      t.integer :rating
      t.float :cost
      t.timestamps
    end
  end
end
