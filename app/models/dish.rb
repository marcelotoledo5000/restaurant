# frozen_string_literal: true

class Dish < ApplicationRecord
  belongs_to :restaurante

  validates :name, presence: true
  validates :price, presence: true
end
