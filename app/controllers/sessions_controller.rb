class SessionsController < ApplicationController
  def new
    session.clear unless session[:guest_id].present?
  end

  def create
    @guest = Guest.find_by(username: params[:session][:username])
    if @guest && @guest.authenticate(params[:session][:password])
      session[:guest_id] = @guest.id
      redirect_to hotels_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear

    redirect_to login_path
  end
end
