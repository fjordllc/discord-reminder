Rails.application.routes.draw do
  resources :messages
  resources :channels
  root to: 'home#index'
end
