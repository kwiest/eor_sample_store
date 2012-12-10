require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  should validate_presence_of :name

  test 'default base price should be $0.00' do
    zero = Money.new '0'
    product = Product.new

    assert_equal zero, product.base_price
  end
end
