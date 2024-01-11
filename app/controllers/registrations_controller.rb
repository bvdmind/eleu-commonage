# app/controllers/registrations_controller.rb

class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_update_params, only: [:update]

    def create
        super
    end
  
    protected
  
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_pic, :admin, :executive])
    end

    def configure_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :profile_pic, :admin, :executive])
    end
  end
  