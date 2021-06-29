Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "allproducts_path", controller: "products", action: "all_products"

  get "productone_path", controller: "products", action: "body_butter"

  get "producttwo_path", controller: "products", action: "body_spritz"

  get "productthree_path", controller: "products", action: "body_lotion"

  get "/single_product" => "products#product1_params"

  get "/single_product/:id" => "products#product1_params"

  post "/body_params" => "products#product1_params"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"

  get "/suppliers/:id" => "suppliers#show"

  post "/suppliers" => "suppliers#create"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
end
