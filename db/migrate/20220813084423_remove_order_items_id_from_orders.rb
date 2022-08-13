class RemoveOrderItemsIdFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :order_item_id, :bigint
  end
end
