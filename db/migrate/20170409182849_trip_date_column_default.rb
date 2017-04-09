class TripDateColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column(:trips, "date", :date, default: Date.current)
  end
end
