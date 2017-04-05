class Passenger < ApplicationRecord
  has_many :trips
  has_many :drivers, :through => :trips

end
