class SessionsController < ApplicationController

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      render 'new' 
    else
      sign_in user
      redirect_back_or user
    end

  end

end
