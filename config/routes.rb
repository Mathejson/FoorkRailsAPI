Rails.application.routes.draw do
  resources :restaurants
  resources :addresses
  resources :meals
  root 'home#show'
  get 'dashboard/show'
  get 'dashboard' => 'dashboard#show'
  get 'home/show'
  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'

end