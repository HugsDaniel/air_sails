class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @trips = Trip.all
    @cards = @trips.sample(3)
  end
end
