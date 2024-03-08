class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end


  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = @animal
    # @booking.total_price = total_price(@booking)
    if @booking.save
      redirect_to animal_bookings_path(@animal)
    else
      redirect_to animal_path(@animal)
    end
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :booking_status, :user_id, :animal_id)
  end

  # def total_price(booking)
  #   return unless booking.start_date && booking.end_date

  #   number_of_days = (booking.end_date - booking.start_date).to_i
  #   price_per_day = @animal.price

  #   number_of_days * price_per_day
  # end
end
