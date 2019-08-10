class WelcomeController < ApplicationController
  def user
    @user = User.find(session[:user_id])
  end
end
