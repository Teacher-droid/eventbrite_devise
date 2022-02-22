Rails.application.routes.draw do
  # root 'orders#new'
  resources :orders, only: [:new, :create]
  devise_for :users
  root 'home#index'
  get 'home/private'
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
