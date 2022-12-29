class Cat < ApplicationRecord
  mount_uploader :image_id, ImageUploader
  belongs_to :user
end
