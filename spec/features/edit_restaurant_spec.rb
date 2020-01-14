require 'rails_helper'

feature 'user can edit restaurant' do
  scenario 'accesses the page correctly' do
    restaurant = create(:restaurante)

    visit root_path
    click_on 'Restaurantes'
    visit edit_restaurante_path restaurant

    expect(page).to have_css('h1', text: 'Cadastro de Restaurante')
    expect(page).to have_css('label', text: 'Nome do Restaurante')
    expect(page).to have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).to have_selector :button, 'Salvar'
    expect(page).not_to have_link('Pesquisar')
    expect(page).not_to have_link('Cadastrar novo Restaurante')
  end

  scenario 'successfuly' do
    restaurant = create(:restaurante)
    new_name = Faker::Books::Lovecraft.location

    visit edit_restaurante_path restaurant
    fill_in 'Nome do Restaurante', with: new_name
    click_on 'Salvar'

    expect(page).to have_current_path restaurantes_path
    expect(page).to have_css('h1', text: 'Restaurantes')
    expect(page).to have_content(new_name)
  end

  scenario 'cant be blank' do
    restaurant = create(:restaurante)

    visit edit_restaurante_path restaurant
    fill_in 'Nome do Restaurante', with: ''
    click_on 'Salvar'

    expect(page).to have_current_path restaurante_path restaurant
    expect(page).to have_css('h1', text: 'Cadastro de Restaurante')
    expect(page).to have_content("Name can't be blank")
  end

  scenario 'can cancel action' do
    restaurant = create(:restaurante)

    visit edit_restaurante_path restaurant
    click_on 'Cancelar'

    expect(page).to have_current_path restaurantes_path
    expect(page).not_to have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).not_to have_selector :link, 'Salvar', href: restaurantes_path
    expect(page).to have_selector :button, 'Pesquisar'
    expect(page).to have_link('Cadastrar novo Restaurante')
  end
end
