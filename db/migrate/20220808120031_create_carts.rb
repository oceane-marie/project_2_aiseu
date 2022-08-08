class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :quantity
      t.bigint :item, null: false, foreign_key: true
      t.bigint :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
