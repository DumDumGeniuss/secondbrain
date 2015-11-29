class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  config.to_prepare do
    Devise::SessionsController.layout "devise"
    Devise::RegistrationsController.layout "devise"
    Devise::ConfirmationsController.layout "devise"
    Devise::UnlocksController.layout "devise"
    Devise::PasswordsController.layout "devise"
  end  
end
