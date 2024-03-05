

#using faker
10.times do

  Animal.create!(
    name: Faker::Creature::Animal.name,
    abilities: Faker::Creature::Animal.name,
    location: Faker::Address.city,
    age: Faker::Number.between(from: 1, to: 10),
    price: Faker::Number.between(from: 100, to: 1000),
    user_id: 1
  )
end
