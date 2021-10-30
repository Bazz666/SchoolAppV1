class ApplicationController < ActionController::Base
   
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :address, :birth_date, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :address, :birth_date])
    end
   
    protect_from_forgery with: :exception

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to main_app.root_path, :alert => exception.message
    end
end

