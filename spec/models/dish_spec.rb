require 'rails_helper'

RSpec.describe Dish, type: :model do
  it { is_expected.to belong_to(:restaurante) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:price) }
end
