class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :price
      t.string :flavor
      t.integer :initial_quantity

      t.timestamps
    end
  end
end
