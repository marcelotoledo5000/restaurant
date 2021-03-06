# frozen_string_literal: true

class Restaurante < ApplicationRecord
  has_many :dishes, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
