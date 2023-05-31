Rails.application.routes.draw do
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :movies
  resources :directors
  get 'movies/five', to: 'movies#display_five_movies'
  get '/latest', to: 'movies#latest'
  get '/me', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'
  get '/trending_movies', to: 'movies#trending_movies'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
