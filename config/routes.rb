Rails.application.routes.draw do
  resources :student, only: [:index]
  resources :users
  root 'student#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
