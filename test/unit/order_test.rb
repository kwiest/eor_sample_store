require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  should have_many :line_items

  test 'total price' do
    order = Order.create!
    bikes = order.line_items.create! product: products(:bike)
    jerseys = order.line_items.create! product: products(:jersey)

    price = bikes.total_price + jerseys.total_price
    assert_equal price, order.total_price

    jerseys.increment_quantity!
    new_price = bikes.total_price + jerseys.total_price
    assert_equal new_price, order.total_price
  end
end
