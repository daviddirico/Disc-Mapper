class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  skip_before_action :verify_authenticity_token

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_photo, :play_level])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :profile_photo, :play_level])
  end
end
