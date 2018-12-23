Rails.application.routes.draw do
  root to: 'home#index'

  resources :restaurantes, except: [:show]
  resources :dishes, except: [:show]
end
