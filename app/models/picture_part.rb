class PicturePart < ApplicationRecord
  mount_uploader :image_part, ImagePartUploader
  belongs_to :picture

  def self.generate_parts(picture, picture_size)
 
    picture_size.times do |order|
      part = PicturePart.new(picture_size: picture_size,
                             picture_order: order)
      part.set_matchers
      part.picture = picture
      part.save!
    end
  end

  def self.not_done 
    where(image_part: nil)
  end

  def self.random_unfinished
    not_done.first #todo: add randomness!
  end

  def set_matchers
    if self.picture_order == 0
      self.bottom_left_x = 0.2
      self.bottom_right_x = 0.7
    elsif picture_order == picture_size - 1
      self.top_left_x = 0.2
      self.top_right_x = 0.7
    else
      self.top_left_x = 0.2
      self.top_right_x = 0.7
      self.bottom_left_x = 0.2
      self.bottom_right_x = 0.7
    end
  end
end
