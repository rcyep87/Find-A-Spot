Rails.application.routes.draw do
  resources :spots
  resources :restaurants
  resources :users

  root 'restaurants#index'
end
