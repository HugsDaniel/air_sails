class ProfilesController < ApplicationController
  def show
    @user = current_user
    @trips = current_user.trips
    @bookings = current_user.bookings
  end
end
