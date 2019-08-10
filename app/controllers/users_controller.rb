class UsersController < ApplicationController

  def new
    
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to login_path
    else
      flash.alert = "Invalid username or password. Please try again."
      redirect_to root_path
      # render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
