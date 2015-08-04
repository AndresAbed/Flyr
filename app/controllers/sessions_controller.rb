class SessionsController < ApplicationController
  def new_oauth_session
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to home_path
  end

  def destroy_oauth_session
    session[:user_id] = nil
    redirect_to root_path
  end
end