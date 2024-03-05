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
    @animal = Animal.new(params.require(:animal).access(:name, :abilities, :location, :age, :price, :user_id))
    @animal.save
  end
end
