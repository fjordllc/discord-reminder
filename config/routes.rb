Rails.application.routes.draw do
  resource :setting, only: %i(edit update), controller: 'setting'
  resources :messages
  resources :channels
  root to: 'home#index'
end
