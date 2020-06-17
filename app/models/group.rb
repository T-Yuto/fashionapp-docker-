class Group < ApplicationRecord
  belongs_to :user
  has_many :up_images, through: :group_up_images
  has_many :down_images, through: :group_down_images
end
