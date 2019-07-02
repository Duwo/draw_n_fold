class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :picture_parts

  def self.generate_picture(picture_size)
    picture = Picture.new
    PicturePart.generate_parts(picture, picture_size)
    return picture
  end

  def done?
  	picture_parts.not_done.empty?
  end


  def combine 
  	image_list = Magick::ImageList.new
  	picture_parts.each do |part|
  		image_list << Magick::Image.read(part.image_part.url) 
  	end

  	image_list.write("combine.png")
  	image = "combine.png"

  end

end

