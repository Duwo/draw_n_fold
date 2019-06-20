class AddImageToPicture < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :image, :string
    remove_column :pictures, :image_url
  end
end
