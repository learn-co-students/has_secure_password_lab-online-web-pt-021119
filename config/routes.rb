Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create]
  get '/users/home' => 'users#home'

  post '/sessions/create' => 'sessions#create'
  get '/sessions/new' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
end
