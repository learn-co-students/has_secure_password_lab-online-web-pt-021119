Rails.application.routes.draw do

  root 'users#new'

  resources :users, only: [:new, :create]

  # A signup page, where the user enters their username, password, and password confirmation.


  # A login page, where the user submits their username and password and are logged in.

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # A user homepage, which says, "Hi, #{username}."

  get '/welcome/user', to: 'welcome#user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/destroy', to: 'sessions#delete'
end
