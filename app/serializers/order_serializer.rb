class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :subtotal, :tax, :total
  # :user_id, :product_id
end
