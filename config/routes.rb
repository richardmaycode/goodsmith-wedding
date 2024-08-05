Rails.application.routes.draw do

  resources :reservations
  resources :memories, only: [:index, :new, :create]
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
