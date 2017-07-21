class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @trips = current_user.trips
    @bookings = current_user.bookings.sort
    @captain_bookings = []

    Booking.all.each do |booking|
      @captain_bookings << booking if booking.trip.captain == current_user
    end
    @captain_bookings.sort
  end
end
