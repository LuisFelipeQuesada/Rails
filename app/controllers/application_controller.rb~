class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user
    
  private
  
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def authorization
  	if session[:user_id]
  	else
  		redirect_to log_in_path
  		flash[:notice] = "Inicie sesion para usar esta funcionalidad"
  	end
  end
end
