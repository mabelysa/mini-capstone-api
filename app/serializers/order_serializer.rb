class OrderSerializer < ActiveModel::Serializer
  attributes :id, :money_math
  # :quantity, :subtotal, :tax, :total
  has_many :carted_products
  # :user_id, :product_id
end
