class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @animals = Animal.all.order('created_at DESC')

    if params[:search].present?
      @animals = @animals.where('name ILIKE ?', "%#{params[:search]}%")
    end

    if params[:age].present?
      age_range = params[:age].split('-')
      @animals = @animals.where(age: age_range[0]..age_range[1])
    end

    if params[:ability].present?
      @animals = @animals.joins(:abilities).where(abilities: { name: params[:ability] })
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
      redirect_to new_animal_animal_ability_path(@animal)
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
      redirect_to animal_path(@animal)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :location, :age, :price, :image)
  end
end
