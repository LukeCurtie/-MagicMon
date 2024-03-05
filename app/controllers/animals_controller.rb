class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new

  end

  def create
    @animal = Animal.new(params.require(:animal).permit(:name, :abilities, :location, :age, :price, :user_id))
    if @animal.save
      redirect_to animal_path(@animal), notice: "Animal was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
