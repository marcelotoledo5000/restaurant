Rails.application.routes.draw do
  root to: 'home#index'

  resources :restaurantes do
    get 'search', on: :collection
  end

  resources :dishes, except: [:show]
end
