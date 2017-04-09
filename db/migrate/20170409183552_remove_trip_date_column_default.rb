class RemoveTripDateColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column(:trips, "date", :date, default: nil)
  end
end
