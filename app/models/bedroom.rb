class Bedroom < ActiveRecord::Base
   validates_uniqueness_of :quantity
   validates_presence_of :quantity
  attr_accessible :quantity
  has_and_belongs_to_many :properties
end
