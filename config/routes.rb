Rails.application.routes.draw do

  get "/products" => "products#index"
  get "products/new" => "products#new"
  post "products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  namespace :api do
    get "/products" => "products#index"
    get "/product/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    
    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"

    get "/orders/:id" => "orders#show"

    post "/orders" => "orders#create"

    post "/carted_products" => "carted_products#create"
  end
end