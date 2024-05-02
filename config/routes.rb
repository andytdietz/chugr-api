Rails.application.routes.draw do
  namespace :api do
    resources :data, only: [:create]
    get "static-map", to: "maps#static_map"
    get "directions", to: "maps#directions"
  end

  get "up" => "rails/health#show", as: :rails_health_check

  resources :breweries, only: [:index, :show]

  resources :comments, only: [:index, :create, :destroy]

  resources :favorites, only: [:index, :create, :destroy]

  resources :users, only: [:show, :create, :update]

  resources :sessions, only: [:create]
end
