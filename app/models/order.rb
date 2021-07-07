class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :products,through: :carted_products

  # def ordertax
  #   price * 0.09
  # end

  # def ordertotal
  #   price + ordertax
  # end
end
