class UpdatePhotoToLists < ActiveRecord::Migration[7.2]
  def change
    add_column :lists, :photo_url, :string
  end
end
