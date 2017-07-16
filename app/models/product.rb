class Product < ApplicationRecord
  has_many :order_items

  validates :name, :description, :price, presence: true
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: {greater_than: 0}
end
