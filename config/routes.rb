Rails.application.routes.draw do
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

  get '/users/brooklyn', to: 'users_controller#brooklyn'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
