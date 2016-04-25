class Item < ActiveRecord::Base
  validates :description, :photo_url, presence:true

end
