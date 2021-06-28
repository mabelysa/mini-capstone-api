class SuppliersController < ApplicationController
  def index
    supplier = Supplier.all
    render json: supplier.as_json
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier.as_json
  end

  def create
    supplier = supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number

    if supplier.save
      render json: supplier.as_jason
    else
      render json: {errors: supplier.errors.full_messages}, status: :unprocesssable_entity
    end
  end

  def destroy
    # supplier_id = params[:id]
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: {message: "Supplier deleted!"}
  end
end
