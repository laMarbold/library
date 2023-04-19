Rails.application.routes.draw do
  root to: 'home#index'
  resources :categories
  resources :movies
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
