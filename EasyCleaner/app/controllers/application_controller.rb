class ApplicationController < ActionController::Base
 before_action :authorize
 protected
    def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice:"find me at app._controller.rb"
        end
    end

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :password, :about)}
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :password, :about)}
    end
end
