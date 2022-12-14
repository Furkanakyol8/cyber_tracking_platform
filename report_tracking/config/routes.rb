Rails.application.routes.draw do

  devise_for :users, sign_out_via: [:get, :post]

  resources :reports
  root to: "reports#index"
  get 'index.html', to: 'reports#profile'
  get 'profile', to: 'reports#profile'  # , as: :user_profile

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
