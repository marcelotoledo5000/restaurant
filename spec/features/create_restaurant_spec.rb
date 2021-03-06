# frozen_string_literal: true

require 'rails_helper'

feature 'creates restaurant' do
  scenario 'accesses the page correctly' do
    visit root_path
    click_on 'Restaurantes'
    visit new_restaurante_path

    expect(page).to have_current_path new_restaurante_path, ignore_query: true
    expect(page).to have_css('h1', text: 'Cadastro de Restaurante')
    expect(page).to have_css('label', text: 'Nome do Restaurante')
    expect(page).to have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).to have_selector :button, 'Salvar'
    expect(page).not_to have_link('Pesquisar')
    expect(page).not_to have_link('Cadastrar novo Restaurante')
  end

  scenario 'successfully' do
    name = Faker::Books::Lovecraft.location

    visit new_restaurante_path
    fill_in 'Nome do Restaurante', with: name
    click_on 'Salvar'

    expect(page).to have_content(name)
  end

  scenario 'can cancel action' do
    visit new_restaurante_path
    click_on 'Cancelar'

    expect(page).not_to have_selector :link, 'Cancelar', href: restaurantes_path
    expect(page).not_to have_selector :link, 'Salvar', href: restaurantes_path
    expect(page).to have_selector :button, 'Pesquisar'
    expect(page).to have_link('Cadastrar novo Restaurante')
  end

  scenario 'cant be blank' do
    visit new_restaurante_path
    fill_in 'Nome do Restaurante', with: ''
    click_on 'Salvar'

    expect(page).to have_css('h1', text: 'Cadastro de Restaurante')
    expect(page).to have_content("Name can't be blank")
  end
end
