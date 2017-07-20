class ReservationsController < ApplicationController

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(:status => "Accepted")
    if @booking.save
      redirect_to profile_path(current_user)
      flash[:notice] = "Booking successfully accepted!"
    else
      flash[:alert] = "Booking confirmation failed"
    end
  end

  def deny
    @booking = Booking.find(params[:id])
    @booking.update(:status => "Deny")
    if @booking.save
      redirect_to profile_path(current_user)
      flash[:notice] = "Booking successfully denied!"
    else
      flash[:alert] = "Booking confirmation failed"
    end
  end
end
