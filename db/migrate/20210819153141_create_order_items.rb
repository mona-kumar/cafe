class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string:current_user_id
      t.string:menu_item_id
      t.bigint:quantity

      t.timestamps
    end
  end
end
