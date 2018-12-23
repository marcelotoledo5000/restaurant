FactoryBot.define do
  factory :restaurante do
    name { Faker::LordOfTheRings.location }
  end
end
