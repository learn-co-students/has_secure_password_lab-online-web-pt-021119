Rails.application.routes.draw do

  root 'users#new'
  get 'users/welcome' => '/welcome'
  resources :users, only: [:new, :create]

  get 'sessions/new' => '/login'
  post 'sessions/create' => '/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
