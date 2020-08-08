class SessionsController < ApplicationController
  def new
  end
  def create
    @user = User.find_by(params[:userid])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to products_path
      flash[:notice] = "Bienvenido #{@user.userid}, has ingresado correctamente!"
    else
      render :new
      flash[:alert] = "Usuario o clave erroneos"
    end
  end
end
