require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  should have_many :line_items

  should validate_presence_of :name
  should validate_presence_of :base_price_cents
  should validate_numericality_of :base_price_cents
end
