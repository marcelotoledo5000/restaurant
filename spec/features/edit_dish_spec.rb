# frozen_string_literal: true

require 'rails_helper'

feature 'user can edit a dish' do
  scenario 'accesses the page corretly' do
    dish = create(:dish)

    # visit root_path
    # click_on 'any_button_or_link'
    visit edit_dish_path dish

    expect(page).to have_current_path edit_dish_path dish
    expect(page).to have_css('h1', text: 'Cadastro de Prato')
    expect(page).to have_selector(:select, 'Restaurante')
    expect(page).to have_css('label', text: 'Prato')
    expect(page).to have_css('label', text: 'Preço(R$)')
    expect(page).to have_selector :link, 'Cancelar', href: dishes_path
    expect(page).to have_selector :button, 'Salvar'
    expect(page).not_to have_link('Cadastrar novo Prato')
  end

  scenario 'successfuly' do
    dish = create(:dish)
    restaurants = create_list(:restaurante, 2)
    new_name = Faker::Food.unique.dish
    new_price = 29.90

    visit edit_dish_path dish
    select restaurants.last.name, from: 'Restaurante'
    fill_in 'Prato', with: new_name
    fill_in 'Preço(R$)', with: new_price
    click_on 'Salvar'

    expect(page).to have_current_path dishes_path
    expect(page).to have_css('h1', text: 'Pratos')
    expect(page).to have_content(new_name)
    expect(page).to have_content(new_price)
  end

  scenario 'cant be blank' do
    dish = create(:dish)
    restaurant = create(:restaurante)

    visit edit_dish_path dish
    select restaurant.name, from: 'Restaurante'
    fill_in 'Prato', with: ''
    fill_in 'Preço(R$)', with: 15.90
    click_on 'Salvar'

    expect(page).to have_current_path dish_path dish
    expect(page).to have_css('h1', text: 'Cadastro de Prato')
    expect(page).to have_content("Name can't be blank")
  end

  scenario 'can cancel action' do
    dish = create(:dish)
    restaurant = create(:restaurante)

    visit edit_dish_path dish
    select restaurant.name, from: 'Restaurante'
    fill_in 'Prato', with: ''
    fill_in 'Preço(R$)', with: ''
    click_on 'Cancelar'

    expect(page).to have_current_path dishes_path, ignore_query: true
    expect(page).to have_css('h1', text: 'Pratos')
    expect(page).to have_link('Cadastrar novo Prato')
  end
end
