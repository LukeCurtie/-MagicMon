class AnimalAbilitiesController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @animal_ability = AnimalAbility.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @abilities = Ability.where(id: params[:animal_ability][:ability_id])
    @abilities.each do |ability|
      animal_ability = AnimalAbility.new(animal: @animal, ability: ability)
      animal_ability.save
  end
  redirect_to animals_path
end

# private

#   def render_new
#     @animal_ability = AnimalAbility.new
#     @animal_ability.errors.add(:base, "You have already selected this ability")
#     render :new, status: :unprocessable_entity
#   end
end
