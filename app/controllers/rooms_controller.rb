class RoomsController < ProtectedController
  def index
    @rooms = Hotel.find(params[:hotel_id]).rooms
  end

  def show
    @room = Room.find(params[:id])
    @guests = @room.guests
    @reservation = Reservation.new
  end
end
