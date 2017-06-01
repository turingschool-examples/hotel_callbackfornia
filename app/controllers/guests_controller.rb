class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      session[:guest_id] = @guest.id unless session[:guest_id]
      redirect_to hotels_path
    else
      render :new
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:username, :password, :first_name, :last_name)
  end
end
