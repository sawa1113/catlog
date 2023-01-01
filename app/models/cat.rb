class Cat < ApplicationRecord
  mount_uploader :image_id, ImageUploader
  belongs_to :user

  with_options presence: true do
    validates :catname
    validates :appeal_point
    validates :image_id
  end
end
