Rails.application.routes.draw do
  resources :restaurants
  resources :addresses
  resources :meals
  root 'home#show'
  get '/popular-restaurants',to: 'popular_restaurants#index'
end