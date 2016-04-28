class Outfit < ActiveRecord::Base
  has_many :styles
  has_many :items, through: :styles
end
