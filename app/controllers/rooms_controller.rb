class RoomsController < ProtectedController
  def index
    @rooms = Hotel.find(params[:hotel_id]).rooms
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end
end
