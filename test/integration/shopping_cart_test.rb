require 'test_helper'

class ShoppingCartTest < ActionDispatch::IntegrationTest
  def add_product_to_cart
    visit products_path
    click_link 'Details'
    click_button 'Add to shopping cart'
  end

  setup do
    reset_session!
  end

  test 'adding a product to a shopping cart' do
    add_product_to_cart
    assert has_content? 'Shopping Cart (1)'
  end

  test 'removing a product from the cart' do
    add_product_to_cart
    assert has_content? 'Shopping Cart (1)'
    visit shopping_cart_path
    click_button 'Remove'
    assert has_content? 'Shopping Cart (0)'
  end

  test 'emptying a shopping cart' do
    2.times { add_product_to_cart }
    visit shopping_cart_path
    click_button 'Empty cart'
    assert has_content? 'Shopping Cart (0)'
  end
end
