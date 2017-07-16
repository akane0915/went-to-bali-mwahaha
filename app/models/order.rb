class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user, optional: true

  validates :total_price, presence: true
  validates :total_price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: {greater_than: 0 }

  before_save :calculate_total

  def calculate_total
    self.total_price = order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  def finalize(user)
    self.user_id = user.id
    self.status = 2
    self.save
  end
end
