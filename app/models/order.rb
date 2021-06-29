class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  # def ordertax
  #   price * 0.09
  # end

  # def ordertotal
  #   price + ordertax
  # end
end
