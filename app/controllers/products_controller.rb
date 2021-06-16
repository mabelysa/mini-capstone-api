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
end
