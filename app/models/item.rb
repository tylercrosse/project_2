class Item < ActiveRecord::Base
  has_many :notes
  validates :description, :photo_url, presence:true

end
