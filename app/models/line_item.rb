class LineItem
  attr_reader :product, :quantity

  def initialize(product)
    @product  = product
    @quantity = 1
  end

  def increment_quantity!
    @quantity += 1
  end

  def total_price
    @product.base_price * @quantity
  end

  def to_partial_path
    '/line_items/line_item'
  end
end
