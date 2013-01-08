require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  setup do
    @bike = products :bike
    @line_item = LineItem.new @bike
  end

  test 'having a product and quantity' do
    assert_equal @bike, @line_item.product
    assert_equal 1, @line_item.quantity
  end

  test 'incrementing quantity' do
    @line_item.increment_quantity!
    assert_equal 2, @line_item.quantity
  end

  test 'total price' do
    assert_equal @bike.base_price, @line_item.total_price

    @line_item.increment_quantity!
    new_price = @bike.base_price * 2
    assert_equal new_price, @line_item.total_price
  end
end
