class Style < ActiveRecord::Base
  belongs_to :item
  belongs_to :outfit
end
