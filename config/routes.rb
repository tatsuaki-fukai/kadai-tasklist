Rails.application.routes.draw do
  get 'users/show'
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  
  get "signup", to: "users#new"
  resources :users, only: [:show, :new, :create]
  resources :tasks
end
