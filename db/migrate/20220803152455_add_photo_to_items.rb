class AddPhotoToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :photo, :string
  end
end
