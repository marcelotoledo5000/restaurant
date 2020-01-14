# frozen_string_literal: true

require 'rails_helper'

feature 'User can delete dish' do
  scenario 'successfuly' do
    dish = create(:dish)

    # visit root_path
    # click_on 'any_link'
    visit dishes_path
    click_on 'Excluir'

    expect(page).to have_current_path dishes_path, ignore_query: true
    expect(page).to have_css('h1', text: 'Pratos')
    expect(page).to have_content('Cadastrar novo Prato')
    expect(page).to have_content('Restaurante')
    expect(page).to have_content('Prato')
    expect(page).to have_content('Preço')
    expect(page).not_to have_content(dish.name)
    expect(page).not_to have_content(dish.price)
  end
end
