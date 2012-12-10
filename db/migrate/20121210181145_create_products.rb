class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string  :name
      t.text    :description
      t.integer :base_price_cents, default: 0, null: false
      t.string  :base_price_currency, default: 'USD'

      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
