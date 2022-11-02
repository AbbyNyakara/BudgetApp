Rails.application.routes.draw do
  resources :entities
  resources :groups
  devise_for :users

  root "groups#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
