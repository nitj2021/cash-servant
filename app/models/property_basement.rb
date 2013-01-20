class PropertyBasement < ActiveRecord::Base
  belongs_to :property
  belongs_to :basement
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:basement_id
end
