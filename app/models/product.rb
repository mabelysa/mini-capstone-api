class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  has_many :orders

  # allows me to do product.supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  belongs_to :supplier

  def is_discounted?
    if price <= 10
      return "true"
    else
      return "false"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
