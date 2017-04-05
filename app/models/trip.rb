class Trip < ApplicationRecord
  belongs_to :driver, :class_name => Driver, :foreign_key => "driver_id"
  belongs_to :passenger, :class_name => Passenger, :foreign_key => "rider_id"
end
