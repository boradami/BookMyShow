class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @screen = Screen.find(params[:screen_id])
    @show = Show.find(params[:show_id])
    @booked_seats = Seat.joins(:bookings).where("bookings.show_id = #{@show.id}").pluck(:id)
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to generate_ticket_booking_path(@booking.id)
    else
      render :new
    end
  end

  def generate_ticket
    @booking = Booking.find(params[:id])
    total_seats = @booking.seats.count
    show_amount = @booking.show.amount
    @amount = (total_seats*show_amount)
  end

  private

  def booking_params
    params.require(:booking).permit(:show_id, :user_id, seat_ids: [])
  end
end
