class VinsController < ApplicationController
  def show
    model = BMW2002VinTable.lookup_model(params[:id].to_i)[:model]
    if model.nil?
      render :json => { :success => false }
    else
      registered_car = Car.find_by_vin(params[:id].to_i)
      response = {
        :success => true,
        :is_registered => (registered_car.nil? ? false : true),
        :result => model,
      }
      if response[:is_registered]
        response[:registered_userid] = registered_car.user.id
      end
      render :json => response 
    end
  end
  
  def guess_year
    result = BMW2002VinTable.lookup_model(params[:id].to_i)
    if result[:model].nil?
      render :json => { :success => false }
    else
      start_year = result[:model].production_begin.year
      end_year = result[:model].production_end.year
      variance = result[:variance] * (end_year - start_year)
      render :json => { :success => true, :year => start_year + variance.round }
    end
  end

  def registered_user
    registered_car = Car.find_by_vin(params[:id].to_i)
    if registered_car.nil?
      render :json => { :success => false }
    else
      user = registered_car.user
      render :json => {
        :success => true,
        :user => {
          :name => user.name,
          :id => user.id
        },
        :car => {
          :id => registered_car.id
        }
      }
    end
  end
end
