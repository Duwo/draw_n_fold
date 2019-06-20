class AddPictureToPictureParts < ActiveRecord::Migration[5.2]
  def change
    add_reference :picture_parts, :picture, foreign_key: true, index: true
  end
end
