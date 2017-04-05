class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def show
    @passenger = Passenger.find(params[:id])
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
