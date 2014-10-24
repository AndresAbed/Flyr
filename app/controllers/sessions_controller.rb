class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to url_for(:controller => :home, :action => :show)
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
