class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    @flight = @booking.flight
    params[:ticket].to_i.times { @booking.passengers.build } 
  end

  def create
    @booking = Booking.create(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
