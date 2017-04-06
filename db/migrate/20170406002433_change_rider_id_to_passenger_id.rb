class ChangeRiderIdToPassengerId < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :rider_id, :passenger_id
  end
end
