Rails.application.routes.draw do
  namespace :api do
    resources :data, only: [:create]
  end
  get "up" => "rails/health#show", as: :rails_health_check

  get "/breweries" => "breweries#index"
  get "/breweries/:id" => "breweries#show"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  resources :users, only: [:show, :update]
end
