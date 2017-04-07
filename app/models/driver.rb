class Driver < ApplicationRecord
  has_many :trips
  has_many :passengers, :through => :trips


  def all_trips_cost
    total = 0
    self.trips.each do |trip|
      if trip.cost != nil
        total += trip.cost
      end
    end
    return total
  end

  def avg_rating
    total = 0
    num_of_ratings = 0
    self.trips.each do |trip|
      if trip.rating != nil
        total += trip.rating
        num_of_ratings += 1
      end
    end
      return (total/num_of_ratings.to_f).round(1)

  end

end
