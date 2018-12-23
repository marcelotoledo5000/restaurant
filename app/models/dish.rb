class Dish < ApplicationRecord
  belongs_to :restaurante

  validates :name, presence: true
end
