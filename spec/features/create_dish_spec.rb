require 'rails_helper'

feature 'Create dish' do
  scenario 'accesses the page correctly' do
    # visit root_path
    # click_on 'button_x'
    visit new_dish_path

    expect(current_path).to eq new_dish_path
    expect(page).to have_css('h1', text: 'Cadastro de Prato')
    expect(page).to have_selector(:select, 'Restaurante')
    expect(page).to have_css('label', text: 'Prato')
    expect(page).to have_css('label', text: 'Preço(R$)')
    expect(page).to have_selector :link, 'Cancelar', href: dishes_path
    expect(page).to have_selector :button, 'Salvar'
    expect(page).to_not have_link('Cadastrar novo Prato')
  end

  scenario 'successfully' do
    restaurante = create(:restaurante)
    dish_name = Faker::Food.unique.dish

    visit new_dish_path
    select restaurante.name, from: 'Restaurante'
    fill_in 'Prato', with: dish_name
    fill_in 'Preço(R$)', with: '19.90'
    click_on 'Salvar'

    expect(page).to have_content(dish_name)
    expect(current_path).to eq dishes_path
  end

  scenario 'can cancel action' do
    visit new_dish_path
    click_on 'Cancelar'

    expect(page).to_not have_selector :link, 'Cancelar', href: dishes_path
    expect(page).to_not have_selector :button, 'Salvar'
    expect(page).to_not have_css('h1', text: 'Cadastro de Prato')
    expect(page).to have_css('h1', text: 'Pratos')
    expect(page).to have_link('Cadastrar novo Prato')
    expect(current_path).to eq dishes_path
  end

  scenario 'cant be blank' do
    visit new_dish_path
    fill_in 'Prato',	with: ''
    fill_in 'Preço(R$)',	with: '21.90'
    click_on 'Salvar'

    expect(page).to have_css('h1', text: 'Cadastro de Prato')
    expect(page).to have_content("Name can't be blank")
  end
end
