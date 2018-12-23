require 'rails_helper'

RSpec.describe Restaurante, type: :model do
  it { should validate_presence_of(:name) }
end
