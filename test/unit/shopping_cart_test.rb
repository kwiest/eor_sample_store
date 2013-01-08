require 'test_helper'

class ShoppingCartTest < ActiveSupport::TestCase
  setup do
    @cart   = ShoppingCart.new
    @bike   = products :bike
    @jersey = products :jersey
  end

  test 'adding items to cart' do
    @cart.add_item @bike

    assert @cart.products.include? @bike
  end

  test 'total price' do
    @cart.add_item @bike
    @cart.add_item @jersey

    price = @bike.base_price + @jersey.base_price
    assert_equal price, @cart.total_price
  end

  test 'incrementing quantity if line item exists' do
    @cart.add_item @bike
    @cart.add_item @bike

    line_item = @cart.line_items.first
    assert_equal @bike, line_item.product
    assert_equal 2, line_item.quantity
  end

  test 'shopping cart size' do
    3.times { @cart.add_item @jersey }
    2.times { @cart.add_item @bike }

    assert_equal 5, @cart.size
  end

  test 'removing an item from the cart' do
    @cart.add_item @bike
    @cart.remove_item @bike

    refute @cart.products.include? @bike
    assert_equal 0, @cart.size
  end

  test 'removing an item that is not in the cart' do
    refute @cart.remove_item @jersey
  end
end
