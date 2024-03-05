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
    @animal = Animal.new(animal_params)
    @animal.user_id = current_user.id

    if @animal.save
      redirect_to @animal
    else
      render 'new'
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :abilities, :age, :location, :price)
  end

end
