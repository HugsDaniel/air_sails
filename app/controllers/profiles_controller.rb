class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @trips = current_user.trips
    @bookings = current_user.bookings.sort
  end
end
