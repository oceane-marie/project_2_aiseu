class RenameUserIdtoOrderIdInOrderItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :order_items, :user_id, :order_id
  end
end
