class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper :breadcrumb
  
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    redirect_to home_path
  end

=begin
  def authorization_check
    # If either one of them is true this filter won’t do anything, allowing the requested user registration form to be rendered
    if current_user.role != "admin" # checking if there are either zero registered users OR if there is a user already logged in
      redirect_to root_path # if neither are true, then redirect to root_path and return false
      return false
    end
  end
=end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone, :username, :company_info, :role])
  end


end
