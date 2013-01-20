class WaterFront < ActiveRecord::Base
validates_uniqueness_of :category
   validates_presence_of :category
  attr_accessible :category
end
