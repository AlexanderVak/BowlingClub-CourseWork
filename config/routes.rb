Rails.application.routes.draw do

  root 'home#index'
  resources :staff
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'staff#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
