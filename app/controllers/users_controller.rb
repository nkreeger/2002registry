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
      sign_in @user
      flash[:notice] = "Welcome to the 2002 registry #{@user.name}!"
      redirect_to @user
    else
      @title = "Sign up"
      render "new"
    end
  end

  def edit
  end

  def update
    if current_user.update_attributes(params[:user])
      flash[:notice] = "#{current_user.name} your profile has been updated!"
      redirect_to current_user
    else
      flash[:error] = "Could not update your profile!"
      render "edit"
    end
  end

  def edit_image
    render :layout => false
  end
end
