class SessionsController < ApplicationController

  def new
    flash.alert = ""
  end

  def create
    if @user = User.find_by(name: user_params[:name])
      if @user.authenticate(user_params[:password])
        session[:user_id] = @user.id
        redirect_to welcome_user_path
      else
        flash.alert = "Could not log you in, check password."
        render 'new'
      end
    else
      flash.alert = "User was not found."
      render 'new'
    end
  end

  def delete
    session.clear
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
