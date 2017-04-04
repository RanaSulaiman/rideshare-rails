class RemoveIdColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :drivers, :driver_id
    remove_column :passengers, :rider_id
  end
end
