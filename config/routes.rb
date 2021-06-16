Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "allproducts_path", controller: "products", action: "all_products"

  get "productone_path", controller: "products", action: "body_butter"

  get "producttwo_path", controller: "products", action: "body_spritz"

  get "productthree_path", controller: "products", action: "body_lotion"
end
