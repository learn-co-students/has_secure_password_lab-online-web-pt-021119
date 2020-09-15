class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: session_params[:name])
    if @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to users_home_path
    else
      redirect_to sessions_new_path
    end
  end

  def new
  end

  def destroy
    session.delete :user_id
    redirect_to sessions_new_path
  end

  private

  def session_params
    params.require(:user).permit(:name, :password, :session_id)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
