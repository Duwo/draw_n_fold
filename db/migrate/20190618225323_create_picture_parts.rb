class CreatePictureParts < ActiveRecord::Migration[5.2]
  def change
    create_table :picture_parts do |t|
      t.string :image_url
      t.integer :picture_size
      t.integer :picture_order
      t.decimal :top_left_x
      t.decimal :top_right_x
      t.decimal :bottom_left_x
      t.decimal :bottom_right_x

      t.timestamps
    end
  end
end
