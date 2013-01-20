class Story < ActiveRecord::Base
  validates_uniqueness_of :quantity
   validates_presence_of :quantity
  attr_accessible :quantity
end
