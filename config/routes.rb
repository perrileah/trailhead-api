Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/hikes" => "hikes#index"
  post "/hikes" => "hikes#create"
  get "/hikes/:id" => "hikes#show"
  patch "/hikes/:id" => "hikes#update"
  delete "/hikes/:id" => "hikes#destroy"

  get "/reviews" => "reviews#index"
  get "/reviews/:id" => "reviews#show"
  post "/reviews" => "reviews#create"
  patch "/reviews/:id" => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"

  get "/parks" => "parks#index"
  get "/parks/:id" => "parks#show"
end
