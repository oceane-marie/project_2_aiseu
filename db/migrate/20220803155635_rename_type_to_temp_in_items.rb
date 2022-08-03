class RenameTypeToTempInItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :type, :temp
  end
end
