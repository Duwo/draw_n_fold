class PicturePart < ApplicationRecord
  mount_uploader :image_part, ImagePartUploader

  def self.generate_new_parts(picture_size)
    picture_size.times do |order|
      part = PicturePart.new(picture_size: picture_size,
                             picture_order: order)
      part.set_matchers
      part.save!
    end
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
