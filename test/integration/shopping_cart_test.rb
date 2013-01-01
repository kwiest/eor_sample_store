require 'test_helper'

class ShoppingCartTest < ActionDispatch::IntegrationTest
  test 'adding a product to a shopping cart' do
    visit products_path
    click_link 'Details'
    click_link 'Add to shopping cart'

    assert has_content? 'Shopping Cart (1)'
  end
end
