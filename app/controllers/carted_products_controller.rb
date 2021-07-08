class CartedProductsController < ApplicationController
  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if carted_product.save
      render json: carted_product
    else
      render json: { errors: carted_product.errors.full_messages }, status: 422
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { message: "Carted product successfully removed!" }
  end

  # def create
  #   if current_user && current_user.admin
  #     cartedproducts = Cartedproducts.new(
  #       product_id: params[:product_id],
  #       quantity: params[:quantity],
  #       user_id: current_user.id
  #     if product.save
  #       render json: product.as_json
  #     else
  #       render json: { errors: product.errors.full_messages },
  #              status: :unprocessable_entity
  #     end
  #   else
  #     render json: {}, status: :unathorized
  #   end
  # end
end
