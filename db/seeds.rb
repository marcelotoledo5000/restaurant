# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Restaurante.create([
    {
      name: Faker::Movies::LordOfTheRings.unique.location
    }
  ])
end

restaurants = Restaurante.all
Dish.create([
  {
    name: Faker::Food.unique.dish, price: 18.99, restaurante_id: restaurants.first.id
  },
  {
    name: Faker::Food.unique.dish, price: 27.99, restaurante_id: restaurants.first.id
  },
  {
    name: Faker::Food.unique.dish, price: 19.99, restaurante_id: restaurants.last.id
  },
  {
    name: Faker::Food.unique.dish, price: 28.99, restaurante_id: restaurants.last.id
  },
  {
    name: Faker::Food.unique.dish, price: 38.99, restaurante_id: restaurants.last.id
  }
])
