class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
    @trip.passenger_id = params[:passenger_id]

    begin
      driver = Driver.all.sample #(Driver.order("RANDOM()"))[0]
    end until driver.status.downcase == "available"
    @trip.driver_id = driver.id
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    if trip.update(trip_params)
      redirect_to trips_path
    end
  end

  def create
    # passenger = Passenger.find(params[:id])

    # if passenger.all_trips_rated?
      # Passenger.find(params[:id]).trips
      @trip = Trip.create trip_params

      unless @trip.id == nil
        redirect_to trips_path
      end
    # else
    #   redirect_to passenger_path(passenger.id)
    # end
  end



  private
  def trip_params
    params.require(:trip).permit(:driver_id, :passenger_id, :date, :rating, :cost)
  end


end
