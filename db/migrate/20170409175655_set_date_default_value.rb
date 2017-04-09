class SetDateDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:trips, :date, Date.current)
  end
end
