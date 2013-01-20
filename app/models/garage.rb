class Garage < ActiveRecord::Base
  validates_uniqueness_of :capacity
   validates_presence_of :capacity
  attr_accessible :capacity
end
