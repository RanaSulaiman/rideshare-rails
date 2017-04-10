require "csv"

CSV.read("support/drivers.csv", {:headers => true}).each do |driver|
  args = {
          :name => driver[1],
          :vin => driver[2]
        }
  Driver.create(args)
end

CSV.read("support/passengers.csv", {:headers => true}).each do |passenger|
  args = {
          :name => passenger[1],
          :phone_num => passenger[2]
        }
  Passenger.create(args)
end

CSV.read("support/trips.csv", {:headers => true}).each do |trip|
  args = {
          :driver_id => trip[1],
          :passenger_id => trip[2],
          :date => trip[3],
          :rating => trip[4]
        }
  Trip.create(args)
end
