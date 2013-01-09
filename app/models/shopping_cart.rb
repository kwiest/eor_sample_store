class ShoppingCart
  attr_reader :line_items

  def initialize
    @line_items = []
  end

  def add_item(product)
    line_item = @line_items.detect { |li| li.product == product }
    if line_item
      line_item.increment_quantity!
    else
      @line_items << LineItem.new(product)
    end
  end

  def remove_item(product)
    return false unless products.include? product

    line_item = @line_items.detect { |li| li.product == product }
    @line_items.delete line_item
  end

  def empty!
    @line_items = []
  end

  def products
    @line_items.map &:product
  end

  def size
    @line_items.sum &:quantity
  end

  def total_price
    @line_items.sum &:total_price
  end
end
