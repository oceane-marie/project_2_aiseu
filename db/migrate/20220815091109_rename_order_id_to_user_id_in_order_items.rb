class RenameOrderIdToUserIdInOrderItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :order_items, :order_id, :user_id
  end
end
