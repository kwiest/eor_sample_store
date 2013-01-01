require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  should belong_to :order
  should belong_to :product

  setup do
    @order = Order.new
    @bike  = products :bike
  end

  test 'incrementing quantity' do
    line_item = LineItem.create! product: @bike, order: @order
    line_item.increment_quantity!
    
    assert_equal 2, line_item.quantity
  end

  test 'total price' do
    line_item = LineItem.create! product: @bike, order: @order
    assert_equal @bike.base_price, line_item.total_price

    line_item.increment_quantity!
    new_price = @bike.base_price * 2
    assert_equal new_price, line_item.total_price
  end
end
