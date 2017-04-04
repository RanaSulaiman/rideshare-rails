require "csv"

CSV.read("support/drivers.csv", {:headers => true}).each do |driver|
  args = {
          :driver_id => driver[0],
          :name => driver[1],
          :vin => driver[2]
        }
  Driver.create(args)
end

CSV.read("support/passengers.csv", {:headers => true}).each do |passenger|
  args = {
          :rider_id => passenger[0],
          :name => passenger[1],
          :phone_num => passenger[2]
        }
  Passenger.create(args)
end

CSV.read("support/trips.csv", {:headers => true}).each do |trip|
  args = {
          :trip_id => trip[0],
          :driver_id => trip[1],
          :rider_id => trip[2],
          :date => trip[3],
          :rating => trip[4]
        }
  Trip.create(args)
end
