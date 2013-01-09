class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_cart

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def current_cart
    session[:shopping_cart] ||= ShoppingCart.new
  end

  def record_not_found
    redirect_to root_path, alert: "Sorry, but we couldn't find the page you're looking for."
  end
end
