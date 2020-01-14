# frozen_string_literal: true

FactoryBot.define do
  factory :restaurante do
    name { Faker::Movies::LordOfTheRings.unique.location }
  end
end
