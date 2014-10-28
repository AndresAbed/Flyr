class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  alias_method :devise_current_user, :current_user

  def current_user
    @current_user ||= if session[:user_id]
      User.find(session[:user_id]) 
    else
      devise_current_user
    end 
  end

  def after_sign_in_path_for(resource)
  session[:previous_url] || home_path
	end
end