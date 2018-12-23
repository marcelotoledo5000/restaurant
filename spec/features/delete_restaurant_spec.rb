require 'rails_helper'

feature 'user can delete restaurant' do
  scenario 'successfuly' do
    restaurant = create(:restaurante)

    # visit root_path
    # click_on 'any_link'
    visit restaurantes_path
    click_on 'Excluir'

    expect(current_path).to eq restaurantes_path
    expect(page).to have_css('p', text: 'Pesquisar')
    expect(page).to have_link('Cadastrar novo Restaurante')
    expect(page).to_not have_content(restaurant.name)
    expect(page).to have_css('h1', text: 'Restaurantes')
    expect(page).to have_css('tr', count: 1)
  end
end
