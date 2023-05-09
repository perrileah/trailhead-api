Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/hikes" => "hikes#index"
  post "/hikes" => "hikes#create"
  get "/hikes/:id" => "hikes#show"
  delete "/hikes/:id" => "hikes#destroy"
  get "/reviews" => "reviews#index"
end
