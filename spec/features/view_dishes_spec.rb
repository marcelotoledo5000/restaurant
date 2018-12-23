require 'rails_helper'

feature 'user can access dishes page' do
  scenario 'successfully' do
    # visit root_path
    # click_on 'any_button_or_link'
    visit dishes_path

    expect(current_path).to eq dishes_path
    expect(page).to have_css('h1', text: 'Pratos')
    expect(page).to have_content('Cadastrar novo Prato')
    expect(page).to have_content('Restaurante')
    expect(page).to have_content('Prato')
    expect(page).to have_content('Preço')
  end

  scenario 'can see a list of dishes' do
    create_list(:dish, 15)

    visit dishes_path

    expect(page).to have_css('tr', count: 11) # to title + 10 registers
  end
end
