class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_trip, only: [:show]

  def index
    @trips = if params[:departure_date] == ""
      Trip.where('departure_port LIKE ?', "%#{params[:departure_port]}%")
    elsif params[:departure_port] && params[:departure_date]
      Trip.where('departure_port LIKE ? AND departure_date = ?', "%#{params[:departure_port]}%", params[:departure_date])
    else
      Trip.all
    end
  end

  def show
    @booking = Booking.new
    @bookings = @trip.bookings.count
    @remaining_places = @trip.capacity - @bookings
    if current_user
      current_user.bookings.each do |booking|
        @user_booking = booking if booking.trip_id == @trip.id
      end
    end

  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    @trip.captain = current_user

    if @trip.save
      redirect_to trip_path(@trip)
      flash[:notice] = "You've added your trip !"
    else
      flash[:alert] = "Trip creation failed"
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:departure_port, :arrival_port, :departure_date, :duration, :distance, :boat_name, :description, :capacity, :price, :captain_id, :photo)
  end
end
