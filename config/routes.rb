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

  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"

  post "/sessions" => "sessions#create"
end
