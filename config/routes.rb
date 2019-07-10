Rails.application.routes.draw do
	resources :users
	get '/login', to: "sessions#login"
	post '/sessions', to: "sessions#create"
end
