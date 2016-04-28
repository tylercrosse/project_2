class Item < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :description, presence:true, length: {in: 5..150}

  has_many :notes, dependent: :destroy
  has_many :taggings

  has_many :styles
  has_many :outfits, through: :styles
end
