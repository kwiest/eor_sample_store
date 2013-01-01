class CreateLineItems < ActiveRecord::Migration
  def up
    create_table :line_items do |t|
      t.integer :order_id,   null: false
      t.integer :product_id, null: false
      t.integer :quantity,   default: 1, null: false

      t.timestamps
    end
  end

  def down
    drop_table :line_items
  end
end
