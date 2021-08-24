class AddOrderStatusToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :orderStatus, :boolean, default: false
  end
end
