class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #call the configured params
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
  
  
  def loggedin?
    if !session.has_key?(:user_id)
  	  flash[:errors]=["You are not logged in"]
  		redirect_to "/"
  		return
    end
  end

end
