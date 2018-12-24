require 'rails_helper'

feature 'User can search restaurants' do
  scenario 'successfuly' do
    restaurants_list = create_list(:restaurante, 15)

    visit root_path
    click_on 'Restaurantes'
    fill_in 'q',	with: restaurants_list.first.name
    click_on 'Pesquisar'

    expect(current_path).to eq search_restaurantes_path
    expect(page).to have_content(restaurants_list.first.name)
    expect(page).to have_selector :button, 'Pesquisar'
    expect(page).to have_link('Cadastrar novo Restaurante')
  end

  scenario 'can view details of restaurant' do
    restaurants_list = create_list(:restaurante, 15)

    visit root_path
    click_on 'Restaurantes'
    fill_in 'q',	with: restaurants_list.first.name
    click_on 'Pesquisar'
    click_on restaurants_list.first.name

    expect(current_path).to eq restaurante_path restaurants_list.first
    expect(page).to have_css('h1', text: 'Cadastro de Restaurante')
    expect(page).to have_css('label', text: 'Nome do Restaurante')
    expect(page).to have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).to have_selector :button, 'Salvar'
  end
end
