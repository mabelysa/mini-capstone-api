class CartedProductsController < ApplicationController
  def create
    if current_user && current_user.admin
      carted_products = Carted_products.new(
        product_id: params[:product_id],
        quantity: params[:quantity],
      if product.save
        render json: product.as_json
      else
        render json: { errors: product.errors.full_messages },
               status: :unprocessable_entity
      end
    else
      render json: {}, status: :unathorized
    end
  end
end
