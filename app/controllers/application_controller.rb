class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
  current_user
  end
  
  def not_found
  raise ActionController::RoutingError.new('Not Found')
  end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar) }
    end
end

