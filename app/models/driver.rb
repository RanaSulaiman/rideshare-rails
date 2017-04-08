class Driver < ApplicationRecord
  has_many :trips
  has_many :passengers, :through => :trips
  validates :name, presence: true
  validates :vin, presence: true
  validates :vin, uniqueness: true


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
