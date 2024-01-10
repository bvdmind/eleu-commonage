# app/controllers/registrations_controller.rb

class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create, :update]

    def create
        super
    end
  
    protected
  
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :admin, :executive])
    end
  end
  