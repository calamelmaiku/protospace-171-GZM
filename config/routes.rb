Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   devise_for :users
   root to:  "prototypes#index"
   resources :prototypes, only: [:index, :new, :create, :edit, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:show]
  resources :prototypes, only: [:show, :index]
end

