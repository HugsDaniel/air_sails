class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @trips = Trip.all
  end
end
