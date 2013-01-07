class LineItem
  attr_reader :product_id, :quantity

  def initialize(product_id)
    @product_id = product_id
    @quantity = 1
  end

  def product
    @product ||= Product.find @product_id
  end

  def increment_quantity!
    @quantity += 1
  end

  def total_price
    product.base_price * @quantity
  end

  def to_partial_path
    '/line_items/line_item'
  end
end
