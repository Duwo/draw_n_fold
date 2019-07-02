class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader

  def is_done
  	return false #TODO: add something that iterates through parts and returns false if it finds one with image_part=null. 
  end

end

