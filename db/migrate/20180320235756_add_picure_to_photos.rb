class AddPicureToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :photo, :string
  end
end
