Rails.application.routes.draw do

  get '/users/home', to: "users#home", as: "home"
  root to: "users#home"

  resources :users, only: [:new, :create]
  get '/users/login', to: "users#login", as: "login"

  resources :sessions, only: [:create]

end