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

      post '/login', to: 'auth#create'
    end
  end
end
