class DownImage < ApplicationRecord
  belongs_to :item
  has_many :groups, through: :group_down_images
  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
