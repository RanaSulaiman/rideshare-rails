class Passenger < ApplicationRecord
  has_many :trips
  has_many :drivers, :through => :trips
  validates :name, presence: true
  validates :phone_num, presence: true


  def show_trips
    @passenger = Passenger.find(params[:id]).trips
    redirect_to passenger_path(@passenger.id)
  end

  def all_trips_rated?
    self.trips.each do |trip|
      if trip.rating == nil || trip.rating == ""
        return false
      end
    end
    return true
  end

  def all_trips_cost
    total = 0
    self.trips.each do |trip|
      if trip.cost != nil
        total += trip.cost
      end
    end
    return total
  end


end
