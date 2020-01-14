# frozen_string_literal: true

require 'rails_helper'

feature 'user can access restaurants page' do
  scenario 'successfuly' do
    # visit root_path
    # click_on 'any_button_or_link'
    visit restaurantes_path

    expect(page).to have_current_path restaurantes_path, ignore_query: true
    expect(page).to have_css('h1', text: 'Restaurantes')
    expect(page).to have_content('Restaurante')
  end

  scenario 'can see a list of restaurants' do
    create_list(:restaurante, 15)

    visit restaurantes_path

    expect(page).to have_css('tr', count: 11) # to title + last 10 registers
  end
end
