class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    car = Car.create!(params[:car])
    model = Model.find_by_id(car.model_id)
    flash[:notice] = "'#{car.vin}' a #{car.claimed_year} #{model.name} has been added to the registry."
    redirect_to current_user
  end

  def show
    @car = Car.find(params[:id])
  end

end
