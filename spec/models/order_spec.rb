require 'rails_helper'

describe Order do
  it { should have_many :order_items }
  it { should belong_to :user }

  it { should validate_presence_of :total_price }

  it 'calculates total' do
    product = Product.create(name: "product", description: "cool product", price: 10.00)
    order = Order.new(user_id: 1, total_price: 0)
    order.save
    order.order_items.new(product_id: product.id, quantity: 1)
    order.save
    expect(order.calculate_total).to eq(10.00)
  end

end
