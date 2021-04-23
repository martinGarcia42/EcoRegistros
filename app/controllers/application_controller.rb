class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session
  #include Pundit

  protected
    #pass custom parameters to devise user model
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:farm_id])
    end

  private
    #if a user is trying to do an unauthorized action
    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end 


end
