Rails.application.routes.draw do

  devise_for :users, sign_out_via: [:get, :post]

  resources :reports
  root to: "home#index"
  get 'about', to: 'about#index'
  get 'customers', to: 'customers#index'
  get 'home', to: 'home#index'
  get 'index.html', to: 'reports#index'
  get 'services', to: 'services#index'
  get 'profile', to: 'profiles#index'  # , as: :user_profile

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
