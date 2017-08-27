class ApplicationController < ActionController::Base
  include Jpmobile::ViewSelector
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:name, :email, :password, :password_confirmation, :prefecture_id)
    end
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:name, :email, :password)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:name, :email, :password, :password_confirmation, :header_photo)
    end
  end

end
