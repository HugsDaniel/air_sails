class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_trip, only: [:show]

  def index
    @trips = Trip.all
  end

  def show
    @booking = Booking.new
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
