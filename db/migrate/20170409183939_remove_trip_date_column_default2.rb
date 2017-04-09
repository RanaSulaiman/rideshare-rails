class RemoveTripDateColumnDefault2 < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:trips, :date, nil)
  end
end
