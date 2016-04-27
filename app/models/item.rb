class Item < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :description, presence:true

  has_many :notes, dependent: :destroy
  has_many :taggings

end
