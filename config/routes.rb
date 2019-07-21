Rails.application.routes.draw do
  resources :users
  resources :sessions

  get '/signup', to: 'users#new'
  #get '/welcome', to: 'users#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
