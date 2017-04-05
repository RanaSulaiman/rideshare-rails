class Driver < ApplicationRecord
  has_many :trips
  has_many :passengers, :through => :trips
end
