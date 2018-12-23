FactoryBot.define do
  factory :restaurante do
    name { Faker::LordOfTheRings.unique.location }
  end
end
