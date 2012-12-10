class Product < ActiveRecord::Base
  validates_presence_of :name

  composed_of :base_price,
    class_name: 'Money',
    mapping: [ %w(base_price_cents cents), %w(base_price_currency currency_as_string) ],
    constructor: Proc.new { |cents, currency| Money.new(cents || 0, currency || Money.default_currency) },
    converter: Proc.new { |value| value.respond_to?(:to_money) ? value.to_money : raise(
      ArgumentError, "Can't convert #{value.class} to Money"
    ) }

end
