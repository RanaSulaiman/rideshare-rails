class SetDateDefaultValue2 < ActiveRecord::Migration[5.0]
  def change
    change_column(:trips, "date", :date, default: -> { 'CURRENT_TIMESTAMP' })
  end
end
