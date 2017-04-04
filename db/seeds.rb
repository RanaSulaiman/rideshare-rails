require "csv"

CSV.read("support/drivers.csv", {:headers => true, :header_converters => :symbol}).each do |driver|
  args = {
          :id => driver[0],
          :name => driver[1],
          :vin => driver[2]
        }
  Driver.create(args)
  # binding.pry
end
