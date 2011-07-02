class SearchesController < ApplicationController
  def show
    # For now, just search the cars for a vin number...
    @term = params[:id]
    @car = Car.find_by_vin(@term.to_i)
  end

  def create
    redirect_to(search_path(params[:term]))
  end
end
