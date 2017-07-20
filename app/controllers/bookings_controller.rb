class BookingsController < ApplicationController
  before_action :set_trip, only: [:create]
  before_action :authenticate_user!, only: [:create]

  def create
    @booking = Booking.new(booking_params)
    @booking.trip = @trip

    if @booking.save
      redirect_to trip_path(@trip)
      flash[:notice] = "You've booked your trip !"
    else
      flash[:alert] = "Booking failed"
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:user_id, :price, :first_name, :last_name, :trip_id)
  end


  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end
