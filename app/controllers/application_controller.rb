class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters    
    devise_parameter_sanitizer.for(:sign_up) << [:username, :name, :lastname, :description, :img, :phone,:mobile, :address,
      :company,:type_company,:latitude,:longitude,:facebook,:twitter,:instagram,:youtube,
      :linkedin,:pinterest,:tumblr,:google_plus]
  end
  
end
