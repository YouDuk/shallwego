class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:gender])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:from])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:introduce])
    # sign_up

    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:from])
    devise_parameter_sanitizer.permit(:account_update, keys: [:introduce])
    # edit
  end

end
