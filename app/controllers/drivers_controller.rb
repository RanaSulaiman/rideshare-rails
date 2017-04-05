class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def show
    @result_driver=Driver.find(params[:id])
  end

  def new
    @driver = driver.new
  end

  def edit
    @driver=Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.name = driver_params[:name]
    @driver.vin = driver_params[:driver_id]
    if @driver.update(driver_params)
      redirect_to driver_path(@driver.id)
    else
      render "edit"
    end


  end

  def create
    @driver = Driver.create book_params
    unless @driver.id == nil
      redirect_to driver_path
    else
      render "new"
    end

  end

  private

  def driver_params
    params.require(:driver).permit(:name, :id, :vin)
  end
end
