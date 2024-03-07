class RemoveAbilitiesFromAnimal < ActiveRecord::Migration[7.1]
  def change
    remove_column :animals, :abilities, :string
  end
end
