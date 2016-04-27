class Note < ActiveRecord::Base
  validates :body, presence:true, length: {in: 3..250 }

  belongs_to :item
end
