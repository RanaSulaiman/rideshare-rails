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

    @trip.driver_id =  Driver.order("RANDOM()").limit(1)

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
    @trip = Trip.create trip_params

    unless @trip.id == nil
      redirect_to trips_path
    end
  end

  # def new
  # rider= Rider.find(params[:rider_id])
  #   @trip = rider.trips.build
  # end


  private
  def trip_params
    params.require(:trip).permit(:driver_id, :passenger_id, :date, :rating, :cost)
  end


end
