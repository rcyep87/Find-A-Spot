Rails.application.routes.draw do
  resources :users

  resources :restaurants do
    resources :spots
  end
  root 'restaurants#index'
end
