class Passenger < ApplicationRecord
  has_many :trips
  has_many :drivers, :through => :trips


  def show_trips
    @passenger = Passenger.find(params[:id]).trips
    redirect_to passenger_path(@passenger.id)
  end


end
