Rails.application.routes.draw do
  get 'messages/index'
  root to: "rooms#index"
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
