Rails.application.routes.draw do
  get 'task12/input'
  get 'task12/output'
  # get 'sessions/new'
  root 'sessions#new'
  get 'sessions/create'
  get 'sessions/exit'
  get 'users/index'
  get 'users/new'
  get 'users/xml'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
