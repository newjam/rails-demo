class Cat < ApplicationRecord
  has_one_attached :image
  validate def image_attached
    unless self.image.attached?
      self.errors.add(:image, :must_have_attached_image)
    end
  end
end
