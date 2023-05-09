Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/hikes" => "hikes#index"
end
