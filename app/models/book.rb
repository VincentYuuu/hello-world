require 'carrierwave/orm/activerecord'
require 'file_size_validator'
class Book < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, file_size: { maximum: 1.megabytes }
end