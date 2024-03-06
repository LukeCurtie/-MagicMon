class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  def index
    @animals = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user_id = current_user.id

    if @animal.save
      redirect_to @animal
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @animal.update(animal_params)
    redirect_to @animal
  end

  def destroy
    @animal.destroy
    redirect_to animals_path, status: :see_other
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :abilities, :age, :location, :price)
  end

  def set_animal
    @animal = Animal.find(params[:id])
  end
end
