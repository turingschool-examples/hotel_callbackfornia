class ReservationsController < ProtectedController
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to hotels_path
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:room_id).merge(guest_id: current_guest.id)
  end
end
