class CreateAnimalAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :animal_abilities do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :ability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
