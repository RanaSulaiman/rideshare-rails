class Trip < ApplicationRecord
  belongs_to :driver, :class_name => Driver, :foreign_key => "driver_id"
  belongs_to :passenger, :class_name => Passenger, :foreign_key => "passenger_id"
  validates :driver_id, presence: true
  validates :passenger_id, presence: true
  validates :date, presence: true
end
