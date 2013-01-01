class Order < ActiveRecord::Base
  has_many :line_items

  def total_price
    line_items.sum &:total_price
  end
end
