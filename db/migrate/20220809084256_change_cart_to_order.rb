class ChangeCartToOrder < ActiveRecord::Migration[6.1]
  def change
    rename_table :carts, :orders
  end
end
