class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    before_action :set_krips_api_token

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end

    def set_krips_api_token
        @krisps_token = JsonWebToken.encode(user_id: current_user.hashid) if current_user
    end
end
