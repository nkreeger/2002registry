class VinsController < ApplicationController
  def show
    model = BMW2002VinTable.lookup_model(params[:id].to_i)
    Rails.logger.info("\n\n MODEL: #{model.inspect}\n\n")

    if model.nil?
      render :json => { :success => false }
    else
      render :json => {
        :success => true,
        :model_id => model.model_id
      }
    end
  end
end
