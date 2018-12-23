require 'rails_helper'

feature 'creates restaurants' do
  scenario 'successfully' do
    # visit root_path
    # click_on 'button_bla'
    visit new_restaurante_path

    expect(page).to have_css('h1', text: 'Cadastro de Restaurante')
    expect(page).to have_css('label', text: 'Nome do Restaurante')
    expect(page).to have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).to have_selector :button, 'Salvar'
    expect(page).to_not have_link('Pesquisar')
    expect(page).to_not have_link('Cadastrar novo Restaurante')
  end

  scenario 'can cancel action' do
    visit new_restaurante_path
    click_on 'Cancelar'

    expect(current_path).to eq restaurantes_path
    expect(page).to_not have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).to_not have_selector :link, 'Salvar', href: restaurantes_path
    expect(page).to have_css('p', text: 'Pesquisar')
    # expect(page).to have_link('Pesquisar')
    expect(page).to have_link('Cadastrar novo Restaurante')
  end
end
