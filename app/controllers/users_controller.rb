class UsersController < ApplicationController
  
  def new
    @title = "Sign up"
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # XXX KREEGER DO SOMETHING HERE
    else
      @title = "Sign up"
      render "new"
    end
  end

end
