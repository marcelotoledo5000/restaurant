# frozen_string_literal: true

require 'rails_helper'

feature 'User access the system' do
  scenario 'and see home#index page' do
    visit root_path

    expect(page).to have_css('h1', text: 'Sistema de Cadastro de Restaurantes')
  end
end
