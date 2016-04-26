class Item < ActiveRecord::Base
  has_many :notes, dependent: :destroy
  validates :description, :photo_url, presence:true

end
