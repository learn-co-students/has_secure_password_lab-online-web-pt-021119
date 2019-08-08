Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions

  get '/signup', to: 'users#new'
  #get '/welcome', to: 'users#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
