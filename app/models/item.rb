class Item < ApplicationRecord
  has_many :up_images, dependent: :destroy
  has_many :down_images, dependent: :destroy
  accepts_nested_attributes_for :up_images, allow_destroy: true
  accepts_nested_attributes_for :down_images, allow_destroy: true
  belongs_to :user

  validates_associated :images
end
