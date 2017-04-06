class AddCostColumnAndUpdate < ActiveRecord::Migration[5.0]
  def change
    #add_column(:trips, :cost, :float)
    Trip.all.each do |trip|
      trip.update_attributes(:cost => (((500..2500).to_a.sample)/100.0))
    end
  end

end
