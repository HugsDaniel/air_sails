class TripsController < ApplicationController
  before_action :set_trip, only: [:show]

  def index
    @trips = Trip.all
  end

  def new
  end

  def create
  end

  def show
    @booking = Booking.new
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  # def trip_params
  #   params.require(:trip).permit(:captain, :departure_port, :arrival_port, :departure_date, :duration, :distance, :boat_name, :description, :capacity, :price)
  # end
end
