# frozen_string_literal: true

require 'rails_helper'

feature 'user can delete restaurant' do
  scenario 'successfuly' do
    restaurant = create(:restaurante)

    visit root_path
    click_on 'Restaurantes'
    visit restaurantes_path
    click_on 'Excluir'

    expect(page).to have_current_path restaurantes_path, ignore_query: true
    expect(page).to have_selector :button, 'Pesquisar'
    expect(page).to have_link('Cadastrar novo Restaurante')
    expect(page).not_to have_content(restaurant.name)
    expect(page).to have_css('h1', text: 'Restaurantes')
    expect(page).to have_css('tr', count: 1)
  end
end
