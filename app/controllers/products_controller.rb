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
end
