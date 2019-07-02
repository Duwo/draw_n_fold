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
      image_list.push(Magick::Image.read("#{CarrierWave.root}/#{part.image_part.url}").first)
  	end

    image_list.append(true).write("combine.png")
    File.open('combine.png') do |f|
      self.image = f
    end

    save!
  end

end

