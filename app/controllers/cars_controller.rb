class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    car = Car.create!(params[:car])
    flash[:notice] = "'#{car.vin}' a #{car.claimed_year} #{car.model.name} " +
                     "has been added to the registry."
    redirect_to current_user
  end

  def show
    @car = Car.find(params[:id])
  end

end
