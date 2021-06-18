class ProductsController < ApplicationController
  def all_products
    product = Product.all
    render json: product.as_json
  end

  def body_butter
    product = Product.first
    render json: product.as_json
  end

  def body_spritz
    product = Product.second
    render json: product.as_json
  end

  def body_lotion
    product = Product.third
    render json: product.as_json
  end

  def product1_params
    # input_value = params["product name"]
    # product = Product.find_by(name: input_value)
    # render json: { message: "You have searched for #{product}"
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    render json: product.as_json
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["directions"] || product.description

    product.save
    render json: product.as_json
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Product go bye bye!" }
  end
end
