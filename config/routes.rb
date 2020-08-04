Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :clients
      resources :providers
      resources :appointments
      resources :categories
      resources :posts
      resources :comments
      resources :chatrooms
      resources :messages
      resources :availabilities
      resources :calls, only: :create
      mount ActionCable.server, at: '/cable'

      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      # get '/profile', to: 'users#profile'
    end
  end
end
