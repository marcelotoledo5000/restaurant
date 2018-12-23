Rails.application.routes.draw do
  root to: 'home#index'

  resources :restaurantes, except: [:show]
end
