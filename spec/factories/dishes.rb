# frozen_string_literal: true

FactoryBot.define do
  factory :dish do
    name { Faker::Food.unique.dish }
    price { Faker::Commerce.price(range: 10..99.9, as_string: true) }
    restaurante
  end
end
