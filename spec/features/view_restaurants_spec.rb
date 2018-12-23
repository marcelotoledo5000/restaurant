require 'rails_helper'

feature 'user can access restaurants page' do
  scenario 'successfuly' do
    visit restaurantes_path

    expect(current_path).to eq restaurantes_path
    expect(page).to have_css('h1', text: 'Restaurantes')
  end

  scenario 'can see a list of restaurants' do
    create_list(:restaurante, 15)

    visit restaurantes_path

    expect(current_path).to eq restaurantes_path
    expect(page).to have_css('h1', text: 'Restaurantes')
    expect(page).to have_css('tr', count: 11) # to title + last 10 registers
  end
end
