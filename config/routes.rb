Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get '/login', to: "sessions#login"
	post '/sessions', to: "sessions#create"
end
