class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def is_admin?
    if current_user.admin?
      true
    else
    end
  end
  def is_admin!
    if (current_user.nil?)
      redirect_to new_user_session_path
    elsif (!current_user.admin?)
      redirect_to root_path, notice: "You ain't no admin. Run fool."
    else
    end
end

  helper_method :is_admin!
  helper_method :is_admin?
end
