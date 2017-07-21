class ReservationsController < ApplicationController
  before_action :set_booking
  before_action :authenticate_user!

  def accept
    @booking.update(:status => "Accepted")
    if @booking.save
      redirect_to profile_path(current_user)
      flash[:notice] = "Booking successfully accepted!"
    else
      flash[:alert] = "Booking confirmation failed"
    end
  end

  def deny
    @booking.update(:status => "Deny")
    if @booking.save
      redirect_to profile_path(current_user)
      flash[:notice] = "Booking successfully denied!"
    else
      flash[:alert] = "Booking confirmation failed"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
