class UpImage < ApplicationRecord
  belongs_to :item
  has_many :groups, through: :group_up_images
  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
