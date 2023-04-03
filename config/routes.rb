Rails.application.routes.draw do
  resources :movies
  resources :users
  resources :directors
  get 'movies/five', to: 'movies#display_five_movies'
  get '/latest', to: 'movies#latest'
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'
  get '/trending_movies', to: 'movies#trending_movies'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
