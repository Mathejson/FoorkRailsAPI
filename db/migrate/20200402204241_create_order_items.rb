class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.string :comment
      t.integer :user_id
      t.integer :meal_id
      t.integer :order_id
      t.timestamps
    end
  end
end
