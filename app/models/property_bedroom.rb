class PropertyBedroom < ActiveRecord::Base
  belongs_to :property
  belongs_to :bedroom
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:bedroom_id
end
