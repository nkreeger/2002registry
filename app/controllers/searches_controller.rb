class SearchesController < ApplicationController
  def show
    #
    # For now, just search the cars for a vin number...
    #
    @vin = params[:id]
  end

  def create
    redirect_to(search_path(params[:term]))
  end
end
