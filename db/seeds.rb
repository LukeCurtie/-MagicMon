# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Destroying the previous data'
Booking.destroy_all
Animal.destroy_all
User.destroy_all

puts "Creating user"
user1 = User.new(name: "dummy", owner: true, email: "dummy@mail.com",
password: "dummy123")
user1.save!
puts "dummy owner created successfully."

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


10.times do
  animal = Animal.new(
    name: Faker::Creature::Animal.name,
    abilities: %w[Speed Water Fire Air Earth Intellect Teleport].sample,
    location: Faker::Address.city,
    image_url: Faker::Avatar.image,


    age: Faker::Number.number(digits: 2),
    price: Faker::Number.number(digits: 3),
  )
  animal.user = user1
  animal.save!
end

puts "Created #{Animal.count} animals"


# require 'net/http'
# require 'json'

# def get_pokemon_image(pokemon_name)
#   url = "https://pokeapi.co/api/v2/pokemon/#{pokemon_name}"
#   uri = URI(url)
#   response = Net::HTTP.get(uri)
#   data = JSON.parse(response)
#   data['sprites']['front_default']
# end

# pokemon_name = 'pikachu'
# image_url = get_pokemon_image(pokemon_name)
