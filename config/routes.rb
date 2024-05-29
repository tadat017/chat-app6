Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index"
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
