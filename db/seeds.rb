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

puts "Creating new animals."
animal1 = Animal.new(name: "Emberfury", abilities: "Fire Blast", age: 50, location: "St Pierre", price: 500, user_id: 2)
animal1.save!
puts "Seed data created successfully."
