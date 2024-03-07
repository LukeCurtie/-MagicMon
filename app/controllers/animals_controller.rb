class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search]
      @animals = Animal.find(params[:search]).order("created_at DESC")
    else
      @animals = Animal.all.order('created_at DESC')
    end
  end



  def show
    @booking = Booking.new
    @animal = Animal.find(params[:id])

  end

  def new
    @animal = Animal.new

  end


  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user

    if @animal.save
      redirect_to animal_abilities_new_path(@animal)
    else
      render 'new', status: :unprocessable_entity
    end
  end

 def edit
  @animal = Animal.find(params[:id])
  @animal.user = current_user



  end

  def update
    @animal = Animal.find(params[:id])
    @animal.user = current_user

    if @animal.update(animal_params)

      redirect_to @animal

    else
      render 'edit'
    end
  end










  private

  def animal_params
    params.require(:animal).permit(:name, :age, :location, :price, :image)


  end


end
