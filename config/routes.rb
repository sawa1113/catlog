Rails.application.routes.draw do
  devise_for :users
  resources :cats
  root to: "home#index"
  resources :users
  resources :cats do
    resource :favorites, only: [:create, :destroy]
  end
end