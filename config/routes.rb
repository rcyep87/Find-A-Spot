Rails.application.routes.draw do
  resources :users
  resources :restaurants do
    resources :spots
  end
  resources :spots
  root 'restaurants#index'
  match '*not_found_route', to: 'application#options', via: [:options]
end
