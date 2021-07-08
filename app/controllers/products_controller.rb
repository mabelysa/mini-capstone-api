class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

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
    if current_user
      if params[:category]
        category = Category.find_by(name: params[:category])
        products = category.products
      else
        products = Product.all
        render json: products
      end
    else
      render json: []
    end
  end

  # def index
  #   if current_user
  #     products = Product.all
  #     render json: products
  #   else
  #     render json: []
  #   end
  # end

  # def index
  #   products = Product.all
  #   render json: products
  #   # .as_json
  # end

  def show
    product_id = params[:id]
    product = Product.find(product_id)
    render json: product
    # .as_json(methods: [:is_discounted?, :tax, :total])
  end

  def create
    # if current_user && current_user.admin
      product = Product.new(
        name: params["name"],
        price: params["price"],
        image_url: params["image_url"],
        description: params["description"],
        supplier_id: params[:supplier_id],
      )
      if product.save
        render json: product.as_json
      else
        render json: { errors: product.errors.full_messages },
               status: 422
      end
    else
      render json: {}, status: :unathorized
    end
  end

  def update
    product_id = params["id"]
    product = Product.find(product_id)
    # product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["directions"] || product.description
    product.supplier_id = params["supplier_id"] || product.supplier_id

    if product.save
      render json: product
      #as_json
    else
      render json: { errors: product.errors.full_messages },
             status: :unprocessable_entity
    end
    # .as_json
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)
    product.destroy
    render json: { message: "Product go bye bye!" }
  end
end
