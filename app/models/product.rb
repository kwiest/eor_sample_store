class Product < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  validates :name, presence: true
  validates :base_price_cents, presence: true, numericality: true

  def base_price
    (base_price_cents.to_f / 100.00)
  end
end
