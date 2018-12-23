FactoryBot.define do
  factory :dish do
    name { Faker::Food.unique.dish }
    price { '9.99' }
    restaurante
  end
end
