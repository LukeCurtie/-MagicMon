class BookingsController < ApplicationController
  def index
    @bookings = booking.all
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new



  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = Animal.find(params[:animal_id])
    if @booking.save
      redirect_to  @booking.animal
    else
      render :new
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
