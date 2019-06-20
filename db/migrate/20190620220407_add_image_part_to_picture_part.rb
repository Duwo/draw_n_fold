class AddImagePartToPicturePart < ActiveRecord::Migration[5.2]
  def change
    add_column :picture_parts, :image_part, :string
    remove_column :picture_parts, :image_url
  end
end
