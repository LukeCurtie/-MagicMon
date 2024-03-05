class BookingsController < ApplicationController
  def index
    @bookings = booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @abooking = Booking.new(params.require(:booking).access(:start_date, :end_date, :ltotal_price, :user_id, :animal_id))
    @animal.save
  end
end