# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# puts "Creating user"
# user1 = User.new(name: "dummy", owner: "Yes", email: "dummy@mail.com",
# password: "dummy123")
# user1.save!
# puts "dummy owner created successfully."

# use faker
# t.string :name
# t.string :abilities
# t.string :location
# t.integer :age
# t.integer :price
#
#
#
#db/migrate/20240304124028_create_animals.rb


10 .times do
  Animal.create(
    name: Faker::Creature::Animal.name,
    abilities: Faker::Creature::Animal.name,
    location: Faker::Address.city,
    age: Faker::Number.number(digits: 2),
    price: Faker::Number.number(digits: 3),
    user_id: 1
  )
end
