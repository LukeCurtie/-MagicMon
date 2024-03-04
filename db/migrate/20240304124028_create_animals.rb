class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :abilities
      t.string :location
      t.integer :age
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
