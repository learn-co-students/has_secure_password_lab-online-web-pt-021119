class UsersController < ApplicationController

  def new
  end

  def create
    if User.find_by(name: params[:user][:name])
      redirect_to '/login'
    else
      if params[:user][:password] == params[:user][:password_confirmation]
        @user = User.create(user_params)
        session[:user_id] = @user.id
      else
        redirect_to '/users/new'
      end
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
