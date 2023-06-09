Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #resources :users
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new'
  get '/users/:id/edit', to: 'users#edit'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
end
