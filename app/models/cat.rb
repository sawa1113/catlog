class Cat < ApplicationRecord
  mount_uploader :image_id, ImageUploader
end
