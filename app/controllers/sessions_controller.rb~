class SessionsController < ApplicationController
  def new
  end
  
  def create
  	user = User.authenticate(params[:email], params[:pass_hash])
  	if user
  		session[:user_id] = user.id
  		redirect_to libros_path#, :notice => "Sesion iniciada"
  	else
  		flash[:notice] = "Nombre de usuario o password incorrectos"
  		render "new"
  	end
  end
  
  def destroy
  	session[:user_id] = nil
  	redirect_to log_in_path#, :notice => "Session cerrada"
  end
end

