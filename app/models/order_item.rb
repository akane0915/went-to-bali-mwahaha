class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, :product_id, presence: true
end
