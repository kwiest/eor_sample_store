class ShoppingCartController < ApplicationController
  def show
    @shopping_cart = current_cart
  end

  def add_item
    product = Product.find params[:id]
    current_cart.add_item product
    redirect_to shopping_cart_path, notice: 'Cart updated!'
  end
end
