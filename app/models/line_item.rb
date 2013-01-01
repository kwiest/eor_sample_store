class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  def increment_quantity!
    self.quantity += 1
    save!
  end

  def total_price
    product.base_price * quantity
  end
end
