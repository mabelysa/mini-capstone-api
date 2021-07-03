class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  # def products
  #   category_products.map do |category_product|
  #     category_products.product
  #   end
  # end
end
