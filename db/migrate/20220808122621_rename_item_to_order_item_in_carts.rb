class RenameItemToOrderItemInCarts < ActiveRecord::Migration[6.1]
  def change
    rename_column :carts, :item_id, :order_item_id
  end
end
