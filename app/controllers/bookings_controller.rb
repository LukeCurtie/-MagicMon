class BookingsController < ApplicationController
  def index
    @bookings = booking.all
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
    @booking.total_price = total_price(@booking)
    if @booking.save
      redirect_to  @booking.animal
    else
      render :new, status: :unprocessable_entity
    end
  end




  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
  def total_price(booking)
    return unless booking.start_date && booking.end_date

    number_of_days = (booking.end_date - booking.start_date).to_i
    price_per_day = @animal.price

    number_of_days * price_per_day
  end


end
