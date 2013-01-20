class PropertyType < ActiveRecord::Base
  validates_uniqueness_of :name
   validates_presence_of :name
  attr_accessible :name
end
