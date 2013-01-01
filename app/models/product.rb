class Product < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :line_items

  validates :name, presence: true
  validates :base_price_cents, presence: true, numericality: true

  def base_price
    (base_price_cents.to_f / 100.00)
  end
end
