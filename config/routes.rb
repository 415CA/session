Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :user_skate_shops
  resources :user_skate_parks
  resources :user_skate_spots
  resources :spot_reviews
  resources :park_reviews
  resources :shop_reviews
  resources :products
  resources :skate_shop_products
  resources :skate_shops
  resources :skate_parks
  resources :skate_spots
  resources :users

  get '/signup', to: 'users#new'

  # get "/login", to: "sessions#new"
  # post "/login", to: "sessions#create"

  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
