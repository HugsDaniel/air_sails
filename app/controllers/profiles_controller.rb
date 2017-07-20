class ProfilesController < ApplicationController

  def show
    @trips = current_user.trips
    @bookings = current_user.bookings
  end
end
