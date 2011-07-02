class SearchesController < ApplicationController
  def show
    #
    # For now, just search the cars for a vin number...
    #
    @vin = params[:id]
  end

  def create
  end
end
