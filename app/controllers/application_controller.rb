class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){|u| 
      u.permit(:username, :name, :email, :email_confirmation, 
                :password, :password_confirmation, :profile_img, 
                :admin, :pr, :club_id)}
    devise_parameter_sanitizer.for(:sign_in){|u| 
      u.permit(:username, :password)}
    devise_parameter_sanitizer.for(:account_update){|u| 
      u.permit(:username, :name, :email, :password, :password_confirmation, :current_password, :profile_img)}
  end
 
  helper_method :current_user, :log_in_using_OAuth?, 
                :events_to_approve, :pr_clubs

  alias_method :devise_current_user, :current_user
  
  def current_user
    @current_user ||= if session[:user_id]
      User.find(session[:user_id]) 
    else
      devise_current_user
    end 
  end

  before_action :require_login, :except => [:new_oauth_session, :incompatible]
  skip_before_action :require_login, if: :devise_controller?

  def require_login
    if not current_user
      redirect_to root_path, notice: "Debes iniciar sesión"
    end
  end

  def log_in_using_OAuth?
    if session[:user_id]
      User.find(session[:user_id]) 
    end 
  end

  def events_to_approve
    Clubevent.select("slug, name, club_id, club_logo_file_name")
              .where(ended: false, approved: false)
              .order("created_at ASC")
  end

  def pr_clubs
    Club.all.select("id, name").order("name ASC")
  end
end