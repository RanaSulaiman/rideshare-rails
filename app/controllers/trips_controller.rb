class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new

  end

  def edit

  end

  def update

  end

  def create

  end


end
