Rails.application.routes.draw do
  root "users#index"
  devise_for :users
  resources :items
  resources :groups
  resources :users
end
