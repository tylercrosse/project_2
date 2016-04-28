class Outfit < ActiveRecord::Base
  has_many :styles, dependent: :destroy
  has_many :items, through: :styles
end
