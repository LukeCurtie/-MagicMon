class AnimalsController < ApplicationController


  def index
    if params[:search]
      @animals = Animal.find(params[:search]).order("created_at DESC")
    else
      @animals = Animal.all.order('created_at DESC')
    end
  end



  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new

  end


  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user

    if @animal.save
      redirect_to @animal
    else
      render 'new'
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



  # 22331312111 is out of range for ActiveModel::Type::Integer with limit 4 bytes






  private

  def animal_params
    params.require(:animal).permit(:name, :abilities, :age, :location, :price)


  end


end
