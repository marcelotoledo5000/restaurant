require 'rails_helper'

RSpec.describe Dish, type: :model do
  it { should belong_to(:restaurante) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
end
