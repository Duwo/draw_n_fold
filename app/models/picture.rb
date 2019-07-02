class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :picture_parts

  def self.generate_picture(picture_size)
    picture = Picture.new
    PicturePart.generate_parts(picture, picture_size)
    return picture
  end
end

