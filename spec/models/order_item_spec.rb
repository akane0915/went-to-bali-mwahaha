require 'rails_helper'

describe OrderItem do
  it { should belong_to :product }
  it { should belong_to :order }

  it { should validate_presence_of :quantity }
  it { should validate_presence_of :product_id }
end
